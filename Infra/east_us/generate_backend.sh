
#!/bin/bash

# Create the backend.tf file
cat <<EOF > backend.tf
terraform { 
  cloud { 
    organization ="${TF_ORGANIZATION}" 
    workspaces { 
      name ="${TF_WORKSPACE}"
    } 
  } 
}
EOF

#!/bin/bash

# Variables
REPO_OWNER="your-github-username-or-org" # Replace with your GitHub username or organization
REPO_NAME="your-repository-name"         # Replace with your repository name
WORKSPACE="${1}"                         # Pass the workspace as the first argument
VERSION="v1.0.0"                         # Version to deploy
PAT="${GITHUB_TOKEN}"                    # Personal Access Token for authentication

# Issue details
ISSUE_TITLE="Deploying $WORKSPACE to $WORKSPACE"
ISSUE_BODY=$(cat <<EOF
Review the Terraform plan, then approve or deny the deployment of $VERSION to $WORKSPACE.

- [ ] Approve
- [ ] Deny
EOF
)

# GitHub API URLs
BASE_API_URL="https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}"
ISSUES_URL="${BASE_API_URL}/issues"

# Create the issue
response=$(curl -s -X POST \
    -H "Authorization: token ${PAT}" \
    -H "Content-Type: application/json" \
    -d "$(jq -n --arg title "$ISSUE_TITLE" --arg body "$ISSUE_BODY" '{title: $title, body: $body}')" \
    "${ISSUES_URL}")

issue_url=$(echo "$response" | jq -r '.html_url')
issue_number=$(echo "$response" | jq -r '.number')

if [[ "$issue_number" == "null" ]]; then
    echo "Failed to create approval issue. Response:"
    echo "$response"
    exit 1
fi

echo "Approval issue created: $issue_url"

# Poll for approval
echo "Waiting for approval..."

while true; do
    # Fetch comments on the issue
    comments_url="${BASE_API_URL}/issues/${issue_number}/comments"
    comments=$(curl -s -H "Authorization: token ${PAT}" "${comments_url}")

    # Check for "Approve" comment
    approved=$(echo "$comments" | jq -r '.[].body' | grep -i "Approve" || true)
    
    if [[ ! -z "$approved" ]]; then
        echo "Deployment approved by approver!"
        break
    fi

    # Delay before rechecking
    sleep 30
done

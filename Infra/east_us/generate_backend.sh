
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
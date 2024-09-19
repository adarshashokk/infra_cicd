terraform { 
  cloud { 
    
    organization = "Adarshk" 

    workspaces { 
      name = "develop01" 
    } 
  } 
}
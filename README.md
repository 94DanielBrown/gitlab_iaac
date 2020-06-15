# gitlab_iaac
IaaC to bring up Gitlab on AWS. Underlying ec2 instance running Ubuntu

## REQUIREMENTS  
Terraform  
Ansible  
Python  
AWS keys  
AWS config including key localtion is set in environment variables in the bash scripts, these need to be set correctly.  
  
## RUN (run.sh)  
Brings up the infrastructure  
REQUIRES
Before first run module must be initialized - terraform init
Networking must be set as a vpc isn't isn't created
Set vpc-id in src/terraform/terraform.tfvars
Set subnet-id in src/terraform/terraform.tfvars
  
## CLEAN (clean.sh)  
Brings down infrastructure  
  
## !!! NOT YET IMPLEMENTED !!!  
## RESTORE (restore.sh)  
Restores the Gitlab config from a previously made backup  

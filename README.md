# gitlab_iaac
IaaC to bring up Gitlab on AWS. Underlying ec2 instance running Ubuntu

REQUIREMENTS  
Terraform  
Ansible  
Python  
AWS keys  
AWS config including key localtion is set in environment variables in the bash scripts, these need to be set correctly.  
  
RUN (run.sh)  
Brings up the infrastructure  
Will prompt for a vpc-id as the vpc itself isn't created, an exisitng vpc can be set in src/terraform/terraform.tfvars  
  
CLEAN (clean.sh)  
Brings down infrastructure  
  
!!! NOT YET IMPLEMENTED !!!  
RESTORE (restore.sh)  
Restores the Gitlab config from a previously made backup  

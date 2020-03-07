### Running example
* If you do not have ssh keys:
* Comment ssh lines from Dockerfile
* build/run container
* run command from .ss/readme and save the keys at: /project/.ssh/id_rsa
* They should be present in your host os
* uncomment the ssh lines in dockerfile
* run normally

* generate ssh keys for .ssh usign readme from .ssh
* docker-compose build aws-infra
* docker-compose run aws-infra

### Terraform
* From AWS Account create an IAM User with no permissions
* Save keys in credentials.env as:
AWS_ACCESS_KEY_ID=[key]
AWS_SECRET_ACCESS_KEY=[secret_key]
* Try and run the next command to check your user: aws sts get-caller-identity
* Create an administrator group
* Assign permissions to different areas to the group
EC2 Admin

* Assign terraform user to it 
* Create a bucket for storing state at some point

### Running terraform 
* cd to desired directory
* terraform init
* terraform -help to explain all commands
* terraform state
### Running example
* docker-compose build aws-infra
* docker-compose run aws-infra

### Terraform
* From AWS Account create an IAM User with no permissions
* Try and run the next command to check your user: aws sts get-caller-identity
* Create a bucket for storing state at some point

### Running terraform 
* cd to desired directory
* terraform init
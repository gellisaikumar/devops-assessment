# assessment-devops
Repo for devops assessment for elsevier

# terraform-s3-secure-hosting
Techinal Assessment 

Hosting a Secure Static Website on AWS S3 using Terraform


How to Run

```
$ export TF_VAR_region="us-west-2" TF_VAR_access_key="xxxxxxxxxxxxx" && export TF_VAR_secret_key="xxxxxxxxxxxxxx"

terraform plan -var-file terraform-dev.tfvars

terraform apply -var-file terraform-dev.tfvars
```
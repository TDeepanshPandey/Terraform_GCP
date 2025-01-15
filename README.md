# Terraform_GCP

Learning Terraform in GCP

Terraform is a tool for infrastructure provision. It uses own language Hashicorp Configuration Language (HCL) to define the infrastructure. It is a declarative language, which means you define the desired state of the infrastructure and Terraform will make it so.

### Installation

Download Terraform from [here](https://www.terraform.io/downloads.html) and add it to the environment path.

### Commands

```sh
$ terraform init # Initialize the working directory and download plugins
$ terraform plan # Create an execution plan
$ terraform apply # Apply the changes
$ terraform destroy # Destroy the infrastructure
```

### Folder Description
- first-tf-script: Contains the first terraform script to create a local file.
- multi-resources: Contains the terraform script to create multiple resources.
- random-generator: Contains the terraform script to create random resources.
- variables: Contains the terraform script to create resources using variables.
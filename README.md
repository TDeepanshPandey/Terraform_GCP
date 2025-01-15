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

**Variables:** It is used to store the values that can be used in the configuration. Type of variables in Terraform: string, number, bool, list, tuple, map, set, object.

```hcl

variable "project_id" {
  type = string
  default = "project-id"
}

variable filename {} # Terraform will ask on apply

terraform apply -var 'filename=sample.txt' # Pass variable from command line

export TF_VAR_filename=sample.txt # Set environment variable

terraform.tfvars # Variable Definition File to store variables 

```

**output variables:** It is used to return the value of the resource.

```hcl  

output "output_variable" {
  value = "value"
}

```

**lifecycle block:** It is used to control the behavior of the resource.

```hcl

lifecycle {
  create_before_destroy = true # Create new resource before destroying the old one
  prevent_destroy = true # Prevent resource from being destroyed
  ignore_changes = ["attribute"] # Ignore changes in the attribute
}

```

### Google Cloud Platform

**Service Account:** It is used to authenticate the Terraform with GCP. It is a JSON file that contains the credentials. Better to use for application to application interaction.


### Folder Description
- first-tf-script: Contains the first terraform script to create a local file.
- multi-resources: Contains the terraform script to create multiple resources.
- random-generator: Contains the terraform script to create random resources.
- variables: Contains the terraform script to create resources using variables.
- dependency: Contains the terraform script to create resources with dependencies.
- lifecycle: Contains the terraform script to create resources with lifecycle block.
- provider: Contains the terraform script to create resources with different providers.
- data-sources: Contains the terraform script to create resources using data sources.
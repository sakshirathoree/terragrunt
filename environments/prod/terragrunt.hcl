terraform {
  source = "../../modules/ec2-instance"
}

# Automatically find the root terragrunt.hcl and inherit its
# configuration
include {
  path = find_in_parent_folders()
}

inputs = {
  instance_type = "m4.large"
  instance_name = "example-server-dev"

inputs = {
  instance_name = "example-server-prod"
}

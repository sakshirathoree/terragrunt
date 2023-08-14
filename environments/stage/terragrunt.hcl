terraform {
  source = "../../modules/ec2-instance"
}

# Automatically find the root terragrunt.hcl and inherit its
# configuration
include {
  path = find_in_parent_folders()
}

inputs = {
  instance_type = "t2.micro"
  instance_name = "example-server-dev"
}

locals {
  debug_path = get_terragrunt_dir()
  parsed = regex("^.*/(?P<env>[^/]+)/.*$", local.debug_path)

  env    = local.parsed.env
}

remote_state {
  backend = "s3"
  config = {
    bucket = "example-bucket-${local.env}"
    region = "us-east-2"
    key    = "${path_relative_to_include()}/terraform.tfstate"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}


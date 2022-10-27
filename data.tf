data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "devws-tf-state-bucket"
    key    = "vpc/${var.ENV}/terrafom.tfstate"
    region = "us-east-1"
  }
}


# ref: https://developer.hashicorp.com/terraform/language/state/remote-state-data
provider "aws" {
  alias      = "east"
  region     = "us-east-1"
  profile    = "Terraform"
}

provider "aws" {
  alias      = "central"
  region     = "eu-central-1"
  profile    = "Terraform"

}

provider "aws" {
  alias      = "west"
  region     = "eu-west-1"
  profile    = "Terraform"

}

resource "aws_instance" "east" {
  provider      =aws.east
  ami           = var.ami_east
  instance_type = var.instance_type

  tags = {
    Name = "Terraform_instance_east"
  }
}

resource "aws_instance" "central" {
  provider      =aws.central
  ami           = var.ami_central
  instance_type = var.instance_type

  tags = {
    Name = "Terraform_instance_central"
  }
}
resource "aws_instance" "west" {
  provider      =aws.west
  ami           = var.ami_west
  instance_type = var.instance_type

  tags = {
    Name = "Terraform_instance_west"
  }
}



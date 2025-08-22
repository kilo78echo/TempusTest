# Placeholder provider configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

provider "random" {}

provider "null" {}

provider "local" {}

provider "template" {}

provider "archive" {}

provider "tls" {}

provider "http" {}
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
  access_key = "AKIATQZCSL6M27HXSG6U"
  secret_key = "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"
}

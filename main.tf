provider "aws" {
  region = "us-east-1"

}

terraform {
  required_providers {
    aws = {
      version = "~> 5.6"
    }
  }
}

resource "aws_dynamodb_table" "table_one" {
  name           = "my_table"
  billing_mode   = "PROVISIONED"
  hash_key       = "customerId"
  read_capacity  = 1
  write_capacity = 1  
  attribute {
    name = "customerId"
    type = "S"
  }
}

#module "table_one" {
#  source         = "./dynamodb"
#  name           = "my_table"
#  billing_mode   = "PROVISIONED"
#  hash_key       = "customerId"
#  read_capacity  = 1
#  write_capacity = 1
#  attribute = [
#    {
#      name = "customerId"
#      type = "S"
#    }
#  ]
#}


resource "aws_dynamodb_table" "table_two" {
  name           = "my_second_table"
  billing_mode   = "PROVISIONED"
  hash_key       = "Id"
  read_capacity  = 1
  write_capacity = 1  
  attribute {
    name = "Id"
    type = "S"
  }
}

#module "table_two" {
#  source         = "./dynamodb"
#  name           = "my_second_table"
#  billing_mode   = "PROVISIONED"
#  hash_key       = "Id"
#  read_capacity  = 1
#  write_capacity = 1
#  attribute = [
#    {
#      name = "Id"
#      type = "S"
#    }
#  ]
#}
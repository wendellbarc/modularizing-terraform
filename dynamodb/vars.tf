variable "attribute" {
  description = "List of attributes for the DynamoDB table"
  type = list(object({
    name = string
    type = string
  }))
}

variable "name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "Billing mode of the DynamoDB table"
  type        = string
  default     = "PROVISIONED"
}

variable "hash_key" {
  description = "Hash key for the DynamoDB table"
  type        = string
}

variable "hash_key_type" {
  description = "Data type of the hash key (S, N, or B)"
  type        = string
  default     = "S"
}

variable "tags" {
  description = "Tags for the DynamoDB table"
  type        = map(string)
  default     = {}
}

variable "write_capacity" {
    description = "Write Capacity Units"
    type = number  
}

variable "read_capacity" {
    description = "Read Capacity Units"
    type = number  
}

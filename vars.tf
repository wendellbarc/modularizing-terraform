variable "tables" {
  #type = list()
  type = list(object({
    name           = string
    read_capacity  = number
    write_capacity = number
    hash_key       = string
    attribute      = list(map(string))
    tags           = map(string)
  }))

}


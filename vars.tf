variable "region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "145.123.0.0/16"
}

# variable "subnet_count" {
#   default = "2"
# }

variable "subnet_cidr" {
  type    = "list"
  default = ["145.123.1.0/25", "145.123.2.0/25", "145.123.3.0/25"]
}

variable "vpc_tag" {
  default = "CITY_VPC1"
}

variable "azs" {
  type    = "list"
  default = ["us-west-2c", "us-west-2a", "us-west-2b"]
}

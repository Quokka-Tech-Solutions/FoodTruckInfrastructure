variable "profile" {
  description = "AWS Profile"
  type        = string
  default     = "terraform"
}

#variable "AWS_ACCESS_KEY_ID" {}       # if uncommented, these will be supplied from the command line
#variable "AWS_SECRET_ACCESS_KEY" {}

variable "region" {
  description = "Region for AWS resources"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Project name"
  type        = string
  default     = "free-tier"
}

variable "ec2_ssh_key_name" {
  description = "The SSH Key Name"
  type        = string
  default     = "free-tier-ec2-key"
}

variable "ec2_ssh_public_key_path" {
  description = "The local path to the SSH Public Key"
  type        = string
  default     = "./provision/access/free-tier-ec2-key.pub"
}

#Count variable
variable "item_count" {
  description = "default count used to set AZs and instances"
  type        = number
  default     = 2
}

#VPC variables
variable "vpc_cidr" {
  description = "default vpc cidr block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "web_subnet_cidr" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "application_subnet_cidr" {
  type    = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidr" {
  type    = list(string)
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}
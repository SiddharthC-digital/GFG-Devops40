variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "instance type of the EC2 instance"
}

variable "ami_id" {
  type        = string
  default     = "ami-0ff5003538b60d5ec"
  description = "AMI ID for the EC2 instance"
}

variable "key_name" {
  type        = string
  default     = "testkeygfg"
  description = "Key pair name for the EC2 instance"
}

variable "subnet_id" {
  type        = string
  default     = "subnet-04c1ed6ba9c55ffd7"
  description = "Subnet ID for the EC2 instance"
}

variable "security_group_allowed_ports" {
  type        = list(number)
  default     =[80, 22, 8080, 443, 9090, 2376, 2377, 7946, 4789, 6443]
  description = "Security group allowd ingress port no for the EC2 instance"
}

variable "instance_name" {
  type        = string
  default     = "terraform-instance-gfg"
  description = "Name tag for the EC2 instance"
}

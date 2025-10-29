variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_ecr_repository_name" {
  type    = string
  default = "container-repository"
}

variable "cluster-name" {
  type    = string
  default = "container-cluster"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "task_family" {
  type    = string
  default = "container-task"
}

variable "cpu" {
  type    = number
  default = 256
}

variable "memory" {
  type    = number
  default = 512
}

variable "container_name" {
  type    = string
  default = "my-container-nestjs"
}

variable "container_port" {
  type    = number
  default = 3000
}

variable "service_name" {
  type    = string
  default = "nestjs-container-service"
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Public subnets CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "Private subnets CIDR blocks"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 3
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  type    = string
  default = ""
}

variable "aws_region" {
    description = "AWS region where resource will be created"
    type = string
    default = "us-east-1"
}

variable "bucket_name" {
    description = "Globally unique S3 bucket name"
    type = string
}

variable "environment" {
    description = "Environment name like dev or prod"
    type = string
    default = "dev"
}

variable "project_name" {
   description = "Project name used in tags"
   type = string
   default = "s3-bucket-project"
}

variable "force_destroy" {
    description = "Allow terraform to delete bucket even if it has objects"
    type = bool
    default = false
}

variable "tags"{
    description = "Extra tags to apply"
    type = map(string)
    default = {}
}
variable "region" {
  default     = "us-east-2"
  type        = string
  description = "this is a mumbai region"
}
variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "for practice purpose we are using t2.micro"
}
variable "ami" {
  default     = "ami-024e6efaf93d85776"
  type        = string
  description = "This is ubuntu ami id"
}
variable "key_name" {
  default     = "aws-ohio"
  type        = string
  description = "This is a key_name of pem"
}
variable "private_key_path" {
  default     = "C:/Users/Meherwan/Downloads/aws-ohio.pem"
  type        = string
  description = "this is the path of private_key"
}
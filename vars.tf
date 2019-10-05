#variable "AWS_ACCESS_KEY" {}
#variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-1"
} 
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 ="ami-04b9e92b5572fa0d1"
    us-east-2 ="ami-0d5d9d301c853a04a"
    us-west-1 ="ami-0221842fe3a17b6ed"
}

provider "aws" {
  region = "us-east-1"
}

module "iam_user_group" {
  source      = "../using-code"  # Update this with the actual path to your module
  user_name   = "gamkong_user"                # Replace with the desired IAM user name
  group_name  = "devops_group"               # Replace with the desired IAM group name
  policy_arn  = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"  # Replace with the desired policy ARN
}
# modules/iam_user_group/output.tf

output "user_name" {
  description = "The name of the IAM user"
  value       = aws_iam_user.atem.name
}



output "group_name" {
  description = "The name of the IAM group"
  value       = aws_iam_group.devops.name
}


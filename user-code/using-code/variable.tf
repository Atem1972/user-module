
variable "user_name" {
  description = "The name of the IAM user to create"
  type        = string
}

variable "group_name" {
  description = "The name of the IAM group to create"
  type        = string
}

variable "policy_arn" {
  description = "The ARN of the policy to attach to the user"
  type        = string
}

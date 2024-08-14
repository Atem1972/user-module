resource "aws_iam_user" "atem" {
  name = var.user_name
}


resource "aws_iam_group" "devops" {
  name = var.group_name
}

resource "aws_iam_user_group_membership" "user_group_membership" {
  user = aws_iam_user.atem.name
  groups = [aws_iam_group.devops.name]
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  user       = aws_iam_user.atem.name
  policy_arn = var.policy_arn
}
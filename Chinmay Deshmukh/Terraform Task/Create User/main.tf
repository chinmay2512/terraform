resource "aws_iam_user" "this_user" {
  name = "user_7"
  path = "/"

  tags = {
    tag-key = "this_is_user"
  }
}
resource "aws_iam_access_key" "this_user" {
  user = aws_iam_user.this_user.name
}
resource "aws_iam_group" "management" {
  name = "manager"
  path = "/"
}
resource "aws_iam_group_membership" "this_user_group_membership"{
    name = "this_member"
    users = [aws_iam_user.this_user.name]
    group = aws_iam_group.management.name
}
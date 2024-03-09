#Create SNS Topic Using Terraform
resource "aws_sns_topic" "sns_topic" {
  name = "my_sns"
  display_name = "my_sns_topic"
}

resource "aws_sns_topic_subscription" "this_sub" {
  protocol = "email"
  topic_arn = aws_sns_topic.sns_topic.arn
  endpoint = "chinmaydeshmukhcd7@gmail.com"
}
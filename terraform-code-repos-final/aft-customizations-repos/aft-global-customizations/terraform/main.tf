resource "aws_cloudwatch_log_group" "demo" {
  name = "log_custom_group_demo"

  tags = {
    Environment = "demo"
    Application = "demo"
  }
}
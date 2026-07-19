output "ec2_public_ip" {
  description = "Public IP of the deployed EC2 instance"
  value       = aws_instance.web.public_ip
}

output "ec2_instance_id" {
  description = "Instance ID of the deployed EC2"
  value       = aws_instance.web.id
}

output "web_url" {
  description = "URL of the deployed web server"
  value       = "http://${aws_instance.web.public_ip}"
}

output "health_url" {
  description = "Health check URL"
  value       = "http://${aws_instance.web.public_ip}/health"
}

output "sns_topic_arn" {
  description = "SNS topic ARN for alerts"
  value       = aws_sns_topic.alerts.arn
}

output "cloudwatch_alarm_name" {
  description = "CloudWatch alarm name"
  value       = aws_cloudwatch_metric_alarm.high_cpu.alarm_name
}
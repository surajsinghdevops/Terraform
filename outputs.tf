output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "private_ip" {
  value = aws_instance.web.private_ip
}

output "bucket_name" {
  value = aws_s3_bucket.demo_bucket.bucket
}

output "iam_role" {
  value = aws_iam_role.ec2_role.name
}

output "instance_profile" {
  value = aws_iam_instance_profile.profile.name
}



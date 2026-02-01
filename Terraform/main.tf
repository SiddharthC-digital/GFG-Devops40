module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "5.10.0"
  bucket = var.bucket_name
}
output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.s3-bucket.s3_bucket_id
}

module "iam" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.4.0"
  name = "my-iam-user-gfg"
}


module "iam_policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name_prefix = "example-gfg1stfeb"
  path        = "/"
  description = "My example policy"

  policy = <<-EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Action": [
            "ec2:Describe*"
          ],
          "Effect": "Allow",
          "Resource": "*"
        }
      ]
    }
  EOF
    tags = {
        Terraform   = "true"
        Environment = "development"
    }
}
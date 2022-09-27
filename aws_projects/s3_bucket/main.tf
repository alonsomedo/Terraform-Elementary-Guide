resource "aws_s3_bucket" "finance" {
    bucket = "finance"
    tags = {
      "Description" = "Finance and Payroll"
    } 
}

resource "aws_s3_bucket_object" "finance-2020" {
    content = "./data_in/finance.txt"
    key = "finance.txt" #name of the object uploaded
    bucket = aws_s3_bucket.finance
}

data "aws_iam_group" "finan-data" {
    group_name = "finance-analysts"
}

data "aws_S3_bucket_policy" "finan-policy" {
    bucket = aws_s3_bucket.finance.id
    policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "IPAllow"
        Effect    = "Deny"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          aws_s3_bucket.b.arn,
          "${aws_s3_bucket.b.arn}/*",
        ]
        Condition = {
          IPAddress = {
            "aws:SourceIp" = "8.8.8.8/32"
          }
        }
      },
    ]
  })
}
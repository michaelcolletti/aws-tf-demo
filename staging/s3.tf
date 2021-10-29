resource "aws_s3_bucket" "monitor" {
  bucket = "mon-log-bucket"
  acl    = "private"

  tags = {
    Name        = "Monitoring Data"
    Environment = "Dev"
  }
  versioning {
    enabled = false
  }
}
resource "aws_s3_bucket" "templates" {
  bucket = "template-bucket"
  acl    = "private"

  tags = {
    Name        = "Templates and Stacks"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}
resource "aws_s3_bucket" "logs" {
  bucket = "logs-bucket"
  acl    = "private"

  tags = {
    Name        = "Log Data"
    Environment = "Dev"
  }
  versioning {
    enabled = false
  }

}

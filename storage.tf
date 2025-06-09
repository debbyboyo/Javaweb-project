resource "aws_s3_bucket" "k8s_state" {
  bucket = "my-k8s-project-state-bucket"

  tags = {
    Name = "k8s-state-bucket"
  }

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

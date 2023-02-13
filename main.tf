provider "aws" {
    region = "us-east-1"
}

terraform {
    backend "s3" {
        bucket = "nomeBucket"
        key = "Key.bucket"
        region = "us-east-1"
    }
}

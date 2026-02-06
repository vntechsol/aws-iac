additional_tags = {
  "Cost Centre" = "INFRA"
  Product       = "INFRA"
  Service       = "IaC"
}

config = {
  s3_bucket = {
    enabled        = true
    s3_bucket_name = "infra-test-s3bucket"
  }
}
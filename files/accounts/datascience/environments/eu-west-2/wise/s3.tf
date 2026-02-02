module "s3_bucket" {
  depends_on = [module.vp, module.internet-gateway]
  source     = "git@github.com/vntechsol/aws-iac.git//modules/s3/bucket"

  enabled        = true
  s3_bucket_name = "wise_s3_bucket"
  additional_tags = {
    "Cost Centre" = "IaC"
    Product       = "IaC"
    Service       = "Infra"
  }
}
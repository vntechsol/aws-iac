module "s3_bucket" {
  #checkov:skip=CKV_TF_2 Ignore module tag
  # tflint-ignore: terraform_module_pinned_source
  source = "../../../../../../modules/s3/bucket" #"git@github.com:vntechsol/aws-iac.git//modules/s3/bucket"

  enabled        = "true"
  s3_bucket_name = "infratests3bucket"
  additional_tags = {
    "Cost Centre" = "INFRA"
    Product       = "INFRA"
    Service       = "IaC"
  }
}
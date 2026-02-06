module "s3_bucket" {
  #checkov:skip=CKV_TF_2 Ignore module tag
  # tflint-ignore: terraform_module_pinned_source
  source = "../../../../modules/s3/bucket" #"git@github.com:vntechsol/aws-iac.git//modules/s3/bucket"

  enabled         = var.config.s3_bucket.enabled
  s3_bucket_name  = var.config.s3_bucket.s3_bucket_name
  additional_tags = var.additional_tags
}
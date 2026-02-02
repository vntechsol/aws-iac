module "vpc" {
  source = "git@github.com/vntechsol/aws-iac.git//modules/vpc"

  enabled  = true
  vpc_name = "wise-vpc"
  vpc_cidr = "10.10.0.0/16"
  additional_tags = {
    "Cost Centre" = "IaC"
    Product       = "IaC"
    Service       = "Infra"
  }
}

module "internet-gateway" {
  depends_on = [module.vpc]
  source     = "git@github.com/vntechsol/aws-iac.git//modules/internet_gw"

  enabled          = true
  vpc_id           = module.vpc.vpc_id
  internet_gw_name = "wise-internet-gateway"
  additional_tags = {
    "Cost Centre" = "IaC"
    Product       = "IaC"
    Service       = "Infra"
  }
}
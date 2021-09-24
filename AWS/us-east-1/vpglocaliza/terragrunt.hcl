terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-vpn-gateway.git?ref=v2.9.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/vpn-gateway/aws/2.9.0?tab=inputs
###########################################################
inputs = {
  # The id of the Customer Gateway.
  # type: string
  customer_gateway_id = ""

  
}

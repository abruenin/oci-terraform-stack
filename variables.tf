
######## Connection specific variables (filled via shell)  ##############

#variable "tenancy_ocid" {}
#variable "user_ocid" {}
#variable "fingerprint" {}
#variable "private_key_path" {}
#variable "ssh_public_key" {}
#variable "db_admin_password" {}
variable "compartment_ocid" {}
variable "region" {}

#########   CIDR  #################

variable "VCN_SEDEMO_CIDR" {
  default = "10.0.0.0/16"
}

variable "SN_BASTION_CIDR" {
  default = "10.0.1.0/24"
}

####### EOF ####################################################

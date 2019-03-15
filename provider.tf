
########################################################################
## Provider configuration:
########################################################################
## Required input variables:
## * region: in which OCI region do we want to deploy?
## * tenancy_ocid: what is the OCID of our tenancy?
## * user_ocid: what is the OCID of our user we use to connect to OCI ?
## * fingerprint: what is the fingerprint of the SSH API-key?
## * private_key_path: where is our private key located?
########################################################################

provider "oci" {
  region = "${var.region}"
}

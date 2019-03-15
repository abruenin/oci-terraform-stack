#### Definitions of data sources  ##########
############################################################
#### Used for querying information from OCI which is to be
#### reused during Terraform run.
############################################################

# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
  compartment_id = "${var.compartment_ocid}"
}

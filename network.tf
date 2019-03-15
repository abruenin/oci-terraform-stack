resource "oci_core_virtual_network" "VCN-Demo" {
  cidr_block     = "${var.VCN_SEDEMO_CIDR}"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "VCN-Demo"
  dns_label      = "demovcn"
}

resource "oci_core_subnet" "SN_Bastion" {
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"
  cidr_block          = "${var.SN_BASTION_CIDR}"
  display_name        = "SN_Bastion"
  compartment_id      = "${var.compartment_ocid}"
  vcn_id              = "${oci_core_virtual_network.VCN-Demo.id}"
  dns_label           = "snbastion"
}

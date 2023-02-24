provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaabxceufzaoqafv3et3ftr75go2faah7p6tbcfcwqxdthet6hfmoka"
  user_ocid        = "ocid1.user.oc1..aaaaaaaaopzbdst5munlzzfwyzbivwt7ju7tsgt2mmr5mjgwiadhkkiwwfaq"
  fingerprint      = "26:d1:64:b9:64:e7:4a:85:47:ef:db:f3:61:bf:5f:19"
  private_key_path = "~/.ssh/oracle-antjrobles.pem"
  region           = "eu-marseille-1"
}

resource "oci_core_instance" "my-oracle" {
  compartment_id      = "ocid1.compartment.oc1..aaaaaaaab6uzhl3fo447d4ik5dyjtnb42itvhctpesda54fxbstbiog24xga"
  availability_domain = "wiau:EU-MARSEILLE-1-AD-1"
  shape               = "VM.Standard2.1"
  display_name        = "my-oracle"

}


/* resource "oci_core_subnet" "my-subnet" {
  compartment_id      = "ocid1.compartment.oc1..aaaaaaaab6uzhl3fo447d4ik5dyjtnb42itvhctpesda54fxbstbiog24xga"
  subnet_id           = "ocid1.subnet.oc1.eu-marseille-1.aaaaaaaa56bul7prpgqrtf4b6d5x6eal6e2kvattovuzhirkllylbckro7rq"
  vcn_id              = "ocid1.vcn.oc1.eu-marseille-1.amaaaaaa63cjarqa757ylstayiwwhd2jypxgpydt4gepn64pv2w3coiykkgq"
  display_name        = "my-subnet"
  availability_domain = "wiau:EU-MARSEILLE-1-AD-1"
  cidr_block          = "10.0.1.0/24"
}
 */
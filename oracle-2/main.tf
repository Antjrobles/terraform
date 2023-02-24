provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaabxceufzaoqafv3et3ftr75go2faah7p6tbcfcwqxdthet6hfmoka>"
  user_ocid        = "ocid1.user.oc1..aaaaaaaaopzbdst5munlzzfwyzbivwt7ju7tsgt2mmr5mjgwiadhkkiwwfaq"
  fingerprint      = "26:d1:64:b9:64:e7:4a:85:47:ef:db:f3:61:bf:5f:19"
  private_key_path = "~/.ssh/oracle-antjrobles.pem"
  region           = "eu-marseille-1"
}

resource "oci_core_instance" "stack-test" {
  availability_domain = "PHxl:US-ASHBURN-AD-1"
  compartment_id      = "ocid1.compartment.oc1..aaaaaaaab6uzhl3fo447d4ik5dyjtnb42itvhctpesda54fxbstbiog24xga"
  shape               = "VM.Standard2.1"
  
 source_details {
    source_id = "ocid1.image.oc1.eu-marseille-1.aaaaaaaaqob6ss72ugsr3zqxxgczcdpx7gfb4aiikhzz2gbj5fbyyng5c6pa"
    source_type = "image"
 }
  display_name   = "stack-test"
  metadata = {
    ssh_authorized_keys = "~/.ssh/"
  }
}

/* create_vnic_details {
  subnet_id = "ocid1.subnet.oc1.eu-marseille-1.aaaaaaaabw56xwmzw7ot6z6esgdqwso76ftjl4lty52edhfrldrrhrdwy2ga"

} */
terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.30.0"
    }
  }
}

provider "linode" {
  token = "e570c5c4c49e99edb065f167a0781b13699483c5cbe1c25b8c2587f85739c222"
}

#RESOURCE: linode_instance
resource "linode_instance" "terraform_linode" {
  label     = "terraform_linode"
  image     = "linode/ubuntu22.04"
  region    = "eu-west"
  type      = "g6-nanode-1"
  root_pass = "6J*Q84^q!K9a4g%o"
}

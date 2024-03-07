terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
    token = var.do_token
}

# data "digitalocean_ssh_key" "terraform" {
#   name = "the_name_of_your_public_SSH_key"
# }

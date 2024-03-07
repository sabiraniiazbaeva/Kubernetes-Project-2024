resource "digitalocean_droplet" "master" {
  image  = "centos-stream-9-x64"
  name   = "master"
  region = var.region
  size   = var.master_size
  ssh_keys = [ var.ssh_key_fingerprint ]
  #   var.ssh_fingerprint_2,

} 

      
resource "digitalocean_droplet" "worker1" {
  image  = "centos-stream-9-x64"
  name   = "worker1"
  region = var.region
  size   = var.worker1_size
  ssh_keys = [ var.ssh_key_fingerprint ]
  # ssh_keys = [digitalocean_ssh_key.default.fingerprint]
} 

resource "digitalocean_droplet" "worker2" {
  image  = "centos-stream-9-x64"
  name   = "worker2"
  region = var.region
  size   = var.worker2_size
  ssh_keys = [ var.ssh_key_fingerprint ]
#   ssh_keys = [
#     var.ssh_fingerprint_1,
#     var.ssh_fingerprint_2,
# ]
} 

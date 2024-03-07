resource "digitalocean_droplet" "master" {
  image  = "centos-stream-9-x64"
  name   = "master"
  region = var.region
  size   = var.master_size
  ssh_keys = [ var.ssh_key_fingerprint ]

} 

      
resource "digitalocean_droplet" "worker1" {
  image  = "centos-stream-9-x64"
  name   = "worker1"
  region = var.region
  size   = var.worker1_size
  ssh_keys = [ var.ssh_key_fingerprint ]
} 

resource "digitalocean_droplet" "worker2" {
  image  = "centos-stream-9-x64"
  name   = "worker2"
  region = var.region
  size   = var.worker2_size
  ssh_keys = [ var.ssh_key_fingerprint ]
  
} 

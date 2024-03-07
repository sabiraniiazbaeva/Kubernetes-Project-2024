variable "do_token" {
    default = "dop_v1_72e017e5b3860cc0171dcd44aa301365288ae22afa8d3c80a3b22726987a9d34"
}

variable "region" {
  default = "nyc3"
}

variable "master_size" {
  default = "s-2vcpu-4gb"
}

variable "worker1_size" {
  default = "s-2vcpu-4gb"
}

variable "worker2_size" {
  default = "s-2vcpu-4gb"
}

# variable "ssh_fingerprint_1" {
#     default = ""
# }

# variable "ssh_fingerprint_2" {
#     default = ""
# }


  variable "ssh_key_fingerprint" {
  description = "Fingerprint of the public ssh key stored on DigitalOcean"
  default = "d0:26:dd:81:5f:79:45:82:b8:00:97:5f:09:59:56:93"
}

# variable "ssh_public_key" {
#   description = "Local public ssh key"
#   default = "~/.ssh/id_rsa.pub"
# }
variable "do_token" {
    default = "dop_v1_d2f891010ededa6a5d6300e98a165bf0ba25428b4169e951d3e3f5fa4148efb6"
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
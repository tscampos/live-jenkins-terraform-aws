terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.29.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

variable "do_token" {}

resource "digitalocean_droplet" "jenkins" {
  name  = "jenkins-droplet"
  size  = "s-1vcpu-1gb"
  image = "ubuntu-20-04-x64"
  region = "nyc1"
  ssh_keys = ["2c:71:cd:ff:10:06:16:15:3a:60:e3:71:89:56:c2:06"]

}

output "public_ip" {
  value = digitalocean_droplet.jenkins.ipv4_address
}

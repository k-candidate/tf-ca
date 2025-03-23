provider "libvirt" {
  uri = var.libvirt_uri
}

module "tf-module-kvm-vm" {
  source                  = "git@github.com:k-candidate/tf-module-kvm-vm.git?ref=v1.4.1"
  vm_name                 = var.vm_name
  network_name            = var.network_name
  volume_size             = var.volume_size
  image_source            = var.image_source
  use_cloud_init          = true
  cloud_init_cfg_filename = var.user_data
  vm_username             = var.vm_username
  cloud_init_vars = {
    vm_hostname    = var.vm_hostname
    vm_username    = var.vm_username
    ssh_public_key = file(var.ssh_public_key)
  }
  ssh_private_key = var.ssh_private_key
  use_ansible     = true
  extra_vars = {
    vm_username                    = var.vm_username
    root_ca_key_passphrase         = var.root_ca_key_passphrase
    ca_name                        = var.ca_name
    intermediate_ca_key_passphrase = var.intermediate_ca_key_passphrase
    intermediate_ca_name           = var.intermediate_ca_name
    endpoint_url                   = var.endpoint_url
    access_key                     = var.access_key
    secret_key                     = var.secret_key
    end_entity_domain              = var.end_entity_domain
  }
}
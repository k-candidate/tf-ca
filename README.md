# tf-ca
Private CA

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_libvirt"></a> [libvirt](#requirement\_libvirt) | = 0.7.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf-module-kvm-vm"></a> [tf-module-kvm-vm](#module\_tf-module-kvm-vm) | git@github.com:k-candidate/tf-module-kvm-vm.git | v1.4.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Access key id for Minio S3 bucket | `string` | n/a | yes |
| <a name="input_ca_name"></a> [ca\_name](#input\_ca\_name) | Root CA name | `string` | `"DevOps Private Root CA"` | no |
| <a name="input_end_entity_domain"></a> [end\_entity\_domain](#input\_end\_entity\_domain) | End entity domain. Usually should be the domain that corresponds to var.network\_name | `string` | n/a | yes |
| <a name="input_endpoint_url"></a> [endpoint\_url](#input\_endpoint\_url) | url for Minio S3 bucket | `string` | `"http://minio.devops.dom:9000"` | no |
| <a name="input_image_source"></a> [image\_source](#input\_image\_source) | Local path or URL for the image | `string` | `"https://cloud-images.ubuntu.com/releases/noble/release/ubuntu-24.04-server-cloudimg-amd64.img"` | no |
| <a name="input_intermediate_ca_key_passphrase"></a> [intermediate\_ca\_key\_passphrase](#input\_intermediate\_ca\_key\_passphrase) | Passphrase for the intermediate CA key | `string` | n/a | yes |
| <a name="input_intermediate_ca_name"></a> [intermediate\_ca\_name](#input\_intermediate\_ca\_name) | Intermediate CA name | `string` | `"DevOps Private Intermediate CA"` | no |
| <a name="input_libvirt_uri"></a> [libvirt\_uri](#input\_libvirt\_uri) | Libvirt URI | `string` | `"qemu:///session"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of the libvirt network where this machine will be provisioned | `string` | `"default"` | no |
| <a name="input_root_ca_key_passphrase"></a> [root\_ca\_key\_passphrase](#input\_root\_ca\_key\_passphrase) | Passphrase for the root CA key | `string` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Secret key for Minio S3 bucket | `string` | n/a | yes |
| <a name="input_ssh_private_key"></a> [ssh\_private\_key](#input\_ssh\_private\_key) | Private SSH key of the account | `string` | `"~/.ssh/id_ed25519"` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | Public SSH key of the account | `string` | `"~/.ssh/id_ed25519.pub"` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | File for cloud-init user data cfg | `string` | `"cloud-init/user-data.cfg"` | no |
| <a name="input_vm_hostname"></a> [vm\_hostname](#input\_vm\_hostname) | Hostname of the machine | `string` | `"ca.domain.dom"` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Libvirt name or domain of the machine | `string` | `"ca"` | no |
| <a name="input_vm_username"></a> [vm\_username](#input\_vm\_username) | Username of an account for SSH access | `string` | `"ubuntu"` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | The size of the VM disk in bytes. | `string` | `"4294967296"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
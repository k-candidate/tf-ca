variable "libvirt_uri" {
  description = "Libvirt URI"
  type        = string
  default     = "qemu:///session"
}

variable "vm_name" {
  description = "Libvirt name or domain of the machine"
  type        = string
  default     = "ca"
}

variable "network_name" {
  description = "Name of the libvirt network where this machine will be provisioned"
  type        = string
  default     = "default"
}

variable "volume_size" {
  description = "The size of the VM disk in bytes."
  type        = string
  default     = "4294967296"
}

variable "image_source" {
  description = "Local path or URL for the image"
  type        = string
  default     = "https://cloud-images.ubuntu.com/releases/noble/release/ubuntu-24.04-server-cloudimg-amd64.img"
}

variable "user_data" {
  description = "File for cloud-init user data cfg"
  type        = string
  default     = "cloud-init/user-data.cfg"
}

variable "vm_username" {
  description = "Username of an account for SSH access"
  type        = string
  default     = "ubuntu"
}

variable "vm_hostname" {
  description = "Hostname of the machine"
  type        = string
  default     = "ca.domain.dom"
}

variable "ssh_public_key" {
  description = "Public SSH key of the account"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "ssh_private_key" {
  description = "Private SSH key of the account"
  type        = string
  default     = "~/.ssh/id_ed25519"
}

variable "root_ca_key_passphrase" {
  description = "Passphrase for the root CA key"
  type        = string
}

variable "ca_name" {
  description = "Root CA name"
  type        = string
  default     = "DevOps Private Root CA"
}

variable "intermediate_ca_key_passphrase" {
  description = "Passphrase for the intermediate CA key"
  type        = string
}

variable "intermediate_ca_name" {
  description = "Intermediate CA name"
  type        = string
  default     = "DevOps Private Intermediate CA"
}

variable "endpoint_url" {
  description = "url for Minio S3 bucket"
  type        = string
  default     = "http://minio.devops.dom:9000"
}

variable "access_key" {
  description = "Access key id for Minio S3 bucket"
  type        = string
}

variable "secret_key" {
  description = "Secret key for Minio S3 bucket"
  type        = string
}

variable "end_entity_domain" {
  description = "End entity domain. Usually should be the domain that corresponds to var.network_name"
  type        = string
}
variable "project" {
}

variable "credentials" {
}
variable "region" {
default = "us-east1"
}

variable "zone" {
  default = "us-east1-b"
}

variable "os_image" {
  default = "projects/debian-cloud/global/images/debian-10-buster-v20230711"
}
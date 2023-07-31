provider "google" {
  
  project = var.project
  credentials = file(var.credentials)
  region = var.region
  zone    = var.zone
}


resource "google_compute_instance" "my_instance" {
  name = "terraformserver"
  machine_type = "n2-standard-2"
  zone = var.zone
  

  boot_disk {
   initialize_params {
     image = var.os_image
   }
}
 network_interface {
   network = "default"
}
}
resource "google_compute_instance" "vm-from-tf" {
    name = "vm-from-tf"
    zone = "europe-west3-a"
    machine_type = "n2-standard-4"
    allow_stopping_for_update = true
    network_interface {
        network = "custom-vpc-tf"
        subnetwork = "sub-sg"
    }

    boot_disk {
        initialize_params {
            image = "debian-9-stretch-v20210916"
            size = 20
        }
    }

    labels = {
        "env" = "tflearning"
    }

    /*service_account {
        email = "some_email"
        scopes = ["cloud-platform"]
    }*/

    lifecycle {
        ignore_changes = [ 
            attached_disk
        ]
    }
}
resource "google_compute_disk" "disk-1" {
    name = "disk-1"
    size = 15
    zone = "europe-west3-a"
    type = "pd-ssd"
}

resource "google_compute_attached_disk" "adisk" {
    instance = google_compute_instance.vm-from-tf.id
    disk = google_compute_disk.disk-1.id
}

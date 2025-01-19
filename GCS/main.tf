resource "google_storage_bucket" "gcs1" {
    name = "bucket-from-tf-up-deep"
    storage_class = "STANDARD"
    location = "europe-west3"
    labels = {
        "env" = "tf_env"
        "dep" = "compliance"
    }
    uniform_bucket_level_access = true
    lifecycle_rule {
        condition {
            age = 5
        }
        action {
            type = "SetStorageClass"
            storage_class = "COLDLINE"
        }
    }

    retention_policy {
        is_locked = false
        retention_period = 3000
    }
}

resource "google_storage_bucket_object" "picture" {
    name = "test"
    bucket = google_storage_bucket.gcs1.name
    source = "test.png"
}
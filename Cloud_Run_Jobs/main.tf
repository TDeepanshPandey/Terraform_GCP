resource "google_cloud_run_v2_job" "default" {
    name     = "cloudrun-job-from-tf"
    location = "europe-west3"
    deletion_protection = false

    template {
        template {
        containers {
            image = "us-docker.pkg.dev/cloudrun/container/job"
            }
        }
    }
}
resource "google_cloud_run_service" "run-app-from-tf" {
    name = "run-app-from-tf"
    location = "europe-west3"
    template {
        spec {
            containers {
                #image = "gcr.io/google-samples/hello-app:1.0"
                image = "gcr.io/google-samples/hello-app:2.0"
            }

        }
    }

    traffic {
        revision_name = "run-app-from-tf-00002-drn"
        percent = 50
    }

    traffic {
        revision_name = "run-app-from-tf-00001-dgz"
        percent = 50
    }
}
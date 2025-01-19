terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "6.16.0"
        }
    }
}

provider "google" {
    # Configuration options
    project = "top-cascade-446019-e0"
    region = "europe-west3"
    zone = "europe-west3-a" 
    credentials = "../gcp-keys.json"
}
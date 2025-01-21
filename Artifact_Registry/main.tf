resource "google_artifact_registry_repository" "artifact_from_tf" {
    location = "europe-west3"
    repository_id = "repo-from-tf"
    description = "Example Docker Repository"
    format = "docker"
}
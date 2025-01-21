resource "google_pubsub_topic" "topic" {
    name = "job-topic"
}

resource "google_cloud_scheduler_job" "job" {
    name        = "test-job"
    description = "test job"
    schedule    = "*/2 * * * *"

pubsub_target {
    # topic.id is the topic's full resource name.
        topic_name = google_pubsub_topic.topic.id
        data       = base64encode("test")
    }
}
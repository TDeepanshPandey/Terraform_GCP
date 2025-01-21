resource "google_sql_database_instance" "mysql-from-tf" {
    name = "mysql-from-tf"
    deletion_protection = false
    database_version = ""
    region = "us-central1"
    settings {
        tier = "db-f1-micro"
    }
}

resource "google_sql_user" "myuser" {
    name = "test"
    password = "test123"
    instance = google_sql_database_instance.mysql-from-tf.name
}
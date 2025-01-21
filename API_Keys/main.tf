resource "google_apikeys_key" "api-key-from-tf" {
    name = "api_key_tf"
    display_name = "TF Key"

    restrictions {
        api_targets {
            service = "translate.googleapis.com"
            methods = ["GET*"]
        }

        browser_key_restrictions {
            allowed_referrers = [".*"]
        }
    }
}
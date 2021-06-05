resource "google_kms_key_ring" "example-keyring" {
  name     = sensitive(var.keyring_name)
  location = "global"
  project = "my-first-project-298218"
}
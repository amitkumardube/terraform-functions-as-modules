output "id" {
    value = google_kms_key_ring.example-keyring.id
    sensitive = true
}

output "self_link" {
    value = google_kms_key_ring.example-keyring.self_link
    sensitive = true
}

variable "bucket_user_roles" {
    type = list(object({
        bucket_name = string
        role = list(object({
            role_name = string
            members = list(string)
        }))
    }))
}
// flatten the collection variable into a list of object which can be used with count

locals {
    local_user_role = flatten([
        for key ,value in var.bucket_user_roles : [
            for index , val in value.role : {
                bucket_name = value.bucket_name
                role_name = val.role_name
                members = val.members
            }
        ]

    ])     
}

// using count on local variable to loop through it

resource "google_storage_bucket_iam_binding" "binding" {
    count = length(local.local_user_role)
    bucket = local_user_role[count.index].bucket_name
    role = local_user_role[count.index].role_name
    members = local_user_role[count.index].members
}
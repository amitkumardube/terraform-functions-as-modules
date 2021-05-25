# flatten function

## what it does ?
- It flatten the collection type variable into a list.
- Once list is created it can be used with count to loop through it.

## Example
### Input

```
bucket_user_roles = [
    {
        bucket_name = "bucket-1"
        role = [
            {
                role_name = "roles/storage.admin"
                members = ["abc@gmail.com","def@gmail.com"]
            },
            {
                role_name = "roles/storage.legacyBucketReader"
                members = ["abc@gmail.com","def@gmail.com"]
            },
            {
                role_name = "roles/storage.legacyBucketWriter"
                members = ["abc@gmail.com","def@gmail.com"]
            },                        
        ]
    },
    {
        bucket_name = "bucket-2"
        role = [
            {
                role_name = "roles/storage.admin"
                members = ["ghi@gmail.com","jkl@gmail.com"]
            },
            {
                role_name = "roles/storage.legacyBucketReader"
                members = ["ghi@gmail.com","jkl@gmail.com"]
            },
            {
                role_name = "roles/storage.legacyBucketWriter"
                members = ["ghi@gmail.com","jkl@gmail.com"]
            },                        
        ]
    }    
]
```

### Output
```
local_user_role = [
            {
                bucket_name = "bucket-1"
                role_name = "roles/storage.admin"
                members = ["abc@gmail.com","def@gmail.com"]
            },
            {
                bucket_name = "bucket-1"
                role_name = "roles/storage.legacyBucketReader"
                members = ["abc@gmail.com","def@gmail.com"]
            },
            {
                bucket_name = "bucket-1"
                role_name = "roles/storage.legacyBucketWriter"
                members = ["abc@gmail.com","def@gmail.com"]
            },                        
            {
                bucket_name = "bucket-2"
                role_name = "roles/storage.admin"
                members = ["ghi@gmail.com","jkl@gmail.com"]
            },
            {
                bucket_name = "bucket-2"
                role_name = "roles/storage.legacyBucketReader"
                members = ["ghi@gmail.com","jkl@gmail.com"]
            },
            {
                bucket_name = "bucket-2"
                role_name = "roles/storage.legacyBucketWriter"
                members = ["ghi@gmail.com","jkl@gmail.com"]
            },                        
]
```

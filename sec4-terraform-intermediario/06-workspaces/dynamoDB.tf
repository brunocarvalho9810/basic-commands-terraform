# resource "aws_dynamodb_table" "lock-table" {

#   name = "tflock-123"

#   read_capacity = 5

#   write_capacity = 5

#   hash_key = "LockID"

#   attribute {

#     name = "LockID"

#     type = "S"
#   }

# }
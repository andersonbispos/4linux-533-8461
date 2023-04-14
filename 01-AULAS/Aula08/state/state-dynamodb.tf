resource "aws_dynamodb_table" "dynamodb_table_state" {
  name           = "terraform-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "dynamodb_table_state"
  }
}
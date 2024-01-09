locals {
  common_tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Owner       = "Bruno Carvalho"
    UpdatedAt   = "2024-01-03"
  }

  ips_file_path = "ips.json"
}
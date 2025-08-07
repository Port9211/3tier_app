output "ecr_registry" {
  value = aws_ecr_repository.my_repo.repository_url
}

output "rds_endpoint" {
  value = aws_db_instance.my_db.endpoint
}

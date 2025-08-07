 resource "aws_db_instance" "postgres" {
    identifier = "my-postgres-db"
    engine = "postgres"
    engine_version = "14.5"
    instance_class = "db.t3.medium"
    allocated_storage = 20
    storage_type = "gp2"
    username = "admin"
    password = "admin1234"
    db_subnet_group_name = module.vpc.database_subnet_group
    vpc_security_group_ids =  [module.vpc.default_security_group_id]
    skip_final_snapshot = true
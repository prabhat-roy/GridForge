resource "aws_db_subnet_group" "pg" {
  name       = "gridforge-${var.environment}"
  subnet_ids = aws_subnet.private[*].id
}

resource "random_password" "pg" {
  length  = 32
  special = true
}

resource "aws_db_instance" "postgres" {
  identifier                   = "gridforge-${var.environment}"
  engine                       = "postgres"
  engine_version               = var.rds_engine_version
  instance_class               = var.rds_instance
  allocated_storage            = var.rds_storage_gb
  storage_encrypted            = true
  db_name                      = "gridforge"
  username                     = "gridforge"
  password                     = random_password.pg.result
  db_subnet_group_name         = aws_db_subnet_group.pg.name
  multi_az                     = true
  backup_retention_period      = 14
  deletion_protection          = true
  performance_insights_enabled = true
  skip_final_snapshot          = false
  final_snapshot_identifier    = "gridforge-${var.environment}-final"
}

resource "aws_elasticache_subnet_group" "redis" {
  name       = "gridforge-${var.environment}"
  subnet_ids = aws_subnet.private[*].id
}

resource "aws_elasticache_replication_group" "redis" {
  replication_group_id       = "gridforge-${var.environment}"
  description                = "GridForge Redis"
  node_type                  = var.redis_node_type
  num_cache_clusters         = var.redis_num_nodes
  automatic_failover_enabled = true
  multi_az_enabled           = true
  engine_version             = "7.1"
  port                       = 6379
  subnet_group_name          = aws_elasticache_subnet_group.redis.name
  at_rest_encryption_enabled = true
  transit_encryption_enabled = true
}

resource "aws_msk_cluster" "kafka" {
  cluster_name           = "gridforge-${var.environment}"
  kafka_version          = var.kafka_version
  number_of_broker_nodes = var.kafka_broker_count

  broker_node_group_info {
    instance_type  = var.kafka_broker_instance
    client_subnets = aws_subnet.private[*].id
    storage_info { ebs_storage_info { volume_size = 1000 } }
  }

  encryption_info {
    encryption_in_transit {
      client_broker = "TLS"
      in_cluster    = true
    }
  }
}

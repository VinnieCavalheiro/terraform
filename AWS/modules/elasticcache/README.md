# Usage ElasticCache Module


module "redis" {
    source = "git@github.com:VinnieCavalheiro/terraform.git"

    stack = var.stack
    name = var.name
    env = var.env
    node_type = var.node_type
    num_cache_nodes = var.num_cache_nodes
    engine_version = "6.x"
    family = "redis6.x"
    az_mode = var.az_mode
    subnet_group_name = "mda-subnet-redis-${var.env}"
    security_group_ids = data.aws_security_group.app.id

    tags = var.tags
}
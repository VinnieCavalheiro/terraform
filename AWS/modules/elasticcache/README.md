# Usage ElasticSearch Module


module "redis" {
    source = "git@ssh.dev.azure.com:v3/hiae-mda/SRE_MDA/SRE.MDA.TERRAFORM.ELASTICCACHE.REDIS?ref=develop"

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
# HIAE - Team Devops
# Create: Vinicius Cavalheiro - spd480@einstein.br
# Date: 2021/12/06
# Module para Elastic Cache Redis

## Subnet para o redis ja criado

## ParamaterGroup para o Regis

resource "aws_elasticache_parameter_group" "parametergroup" {
    name = "${var.stack}-${var.name}"
    family = var.family
  
}

##  Cluster Redis

resource "aws_elasticache_cluster" "cluster" {
    cluster_id = "${var.stack}-${var.name}-${var.env}"
    engine = "redis"
    node_type = var.node_type
    num_cache_nodes = var.num_cache_nodes
    parameter_group_name = aws_elasticache_parameter_group.parametergroup.name
    engine_version = var.engine_version
    apply_immediately = true
    az_mode = var.az_mode
    security_group_ids = [var.security_group_ids]
    subnet_group_name = var.subnet_group_name
    tags = merge(tomap({"Name"="${var.stack}-${var.name}-${var.env}"}),var.tags)
}
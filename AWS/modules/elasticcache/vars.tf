

variable "stack" {
    type = string
    description = "nome da stack do recurso"
}

variable "family" {
    type = string
    description = "versao do redis"
    default = "redis.6x"
}

variable "name" {
    type = string
    description = "Nome do recurso"
}

variable "env" {
    type = string
    description = "ambiente que recurso vai rodar DEV, QAS, UAT, PROD, HTX"
    default = "dev"
}

variable "node_type" {
    type = string
    description = "tipo de instancia para o redis"
    default = "cache.t3.micro"
}

variable "num_cache_nodes" {
    type = number
    description = "numero de instancia para o redis"
    default = "1"
}

variable "az_mode" {
    type = string
    description = "especificar se sera single-az ou cross-az"
    default = "single-az"
}

variable "engine_version" {
    type = string
    description = "especificar engine version do redis"
    default = "6.x"
}

variable "security_group_ids" {
    type = string
    description = "Lista de securitygroups"
}

variable "subnet_group_name" {
    type = string
    description = "subnet group name"
}

variable "tags" {
    type = map(string)
    description = "tags para o redis"
}
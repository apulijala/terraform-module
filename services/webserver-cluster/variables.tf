variable "server_port" {

  description = "The port the server will use for the HTTP requests"
  type = number
}

variable "db_remote_state_key" {
  type = string
  description = "Remote state key of the database"
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type = string
}

variable "db_remote_state_bucekt" {
  type = string
  description = "The name of the S3 Bucket fo the database's "
}

variable "instance_type" {
  type = string
  description = "Instance Type fo the Webserver Cluster"
}

variable "min_size" {
  type = number
  description = "Minimum size of the cluster"
}

variable "max_size" {
  type = number
  description = "Maximum size of the cluster"
}




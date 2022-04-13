

######### HELM ###########

variable "cluster_name" {
  type      = string
  default   = ""
}

variable "chart_name" {
  type      = string
  default      = ""
}

variable "repo_path" {
  type        = string
  default     = ""
}

variable "sa_create" {
  type      = bool
  default   = false
}

variable "sa_name" {
  type      = string
  default   = ""
}


variable "namespace" {
  type      = string
  default   = ""
}

variable "values" {
  description = "(Optional) List of values in raw yaml to pass to helm."
  type        = list(string)
  default     = []
}


######## POLICY ###########

variable "policy_name" {
  type      = string
  default   = ""
}


######### ROLE ############

variable "role_name" {
  type      = string
  default   = ""
}





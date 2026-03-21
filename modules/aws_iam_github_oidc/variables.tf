variable "role_name" {
  type = string
}

variable "github_subjects" {
  type = list(string)
}

variable "ecr_repository_arn" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
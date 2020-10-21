variable "account_id" {
  type        = string
  description = "Account ID to give access to"
}

variable "role_name" {
  type        = string
  description = "Name of assumable role"
}

variable "policy_arn" {
  type        = string
  description = "Policy ARN for the assumable role. Defaults to arn:aws:iam::aws:policy/ReadOnlyAccess"
  default     = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

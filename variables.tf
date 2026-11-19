variable "account_id" {
  type        = string
  description = "Account ID to give access to"
}

variable "additional_trust_roles" {
  description = "ARN of other roles to be passed as principals for sts:AssumeRole"
  default     = []
  type        = list(string)
}

variable "additional_trust_statements" {
  description = "Json attributes of additional iam policy documents to add to the trust policy"
  default     = []
  type        = list(string)
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

variable "restricted_role_name" {
  type        = string
  description = "The specific role name to restrict to (if empty, the account root is used)"
  default     = ""
}
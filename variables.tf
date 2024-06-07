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

variable "policy_arns" {
  type        = list(string)
  description = "One of more policy ARNs for the assumable role. Defaults to arn:aws:iam::aws:policy/ReadOnlyAccess"
  default     = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
}

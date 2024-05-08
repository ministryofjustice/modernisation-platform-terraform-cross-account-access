output "role_arn" {
  value = module.cross-account-access.role_arn
}

# output "role_arn" {
#   value = module.cross-account-access.aws_iam_role.default.arn
# }

# output "assume_role_policy" {
#   value = module.cross-account-access.data.aws_iam_policy_document.combined-assume-role-policy.json
# }

# output "attached_policy_arn" {
#   value = module.cross-account-access.aws_iam_role_policy_attachment.default.policy_arn
# }

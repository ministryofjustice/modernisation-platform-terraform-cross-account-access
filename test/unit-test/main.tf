module "cross-account-access" {
  source      = "../../"
  account_id  = data.aws_caller_identity.current.account_id
  policy_arns = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  role_name   = "CrossAccountAccess"
}

# IAM policy document to allow role assumption from a different account
data "aws_iam_policy_document" "assume-role-policy" {
  version = "2012-10-17"

  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.account_id}:root", ]
    }
  }

  dynamic "statement" {
    for_each = length(var.additional_trust_roles) > 0 ? var.additional_trust_roles : []
    content {
      effect  = "Allow"
      actions = ["sts:AssumeRole"]

      principals {
        type        = "AWS"
        identifiers = [statement.value]
      }
    }
  }
}

data "aws_iam_policy_document" "combined-assume-role-policy" {
  source_policy_documents = concat([data.aws_iam_policy_document.assume-role-policy.json], var.additional_trust_statements)
}

# IAM role to be assumed
resource "aws_iam_role" "default" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.combined-assume-role-policy.json
}

# IAM role attached policies
resource "aws_iam_role_policy_attachment" "default" {
  for_each   = toset(var.policy_arns)
  role       = aws_iam_role.default.id
  policy_arn = each.value
}
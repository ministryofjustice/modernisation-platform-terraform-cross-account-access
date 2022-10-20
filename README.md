# Modernisation Platform Terraform Cross Account Access Module

[![repo standards badge](https://img.shields.io/badge/dynamic/json?color=blue&style=for-the-badge&logo=github&label=MoJ%20Compliant&query=%24.result&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fapi%2Fv1%2Fcompliant_public_repositories%2Fmodernisation-platform-terraform-cross-account-access)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/public-github-repositories.html#modernisation-platform-terraform-cross-account-access "Link to report")

A simple Terraform module to configure an IAM role that is assumable from another account.

## Usage

```
module "cross-account-access" {
  source     = "github.com/ministryofjustice/modernisation-platform-terraform-cross-account-access"
  account_id = "123456789"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role_name  = "CrossAccountAccess"
}
```

<!-- BEGIN_TF_DOCS -->

## Inputs

| Name       | Description                  | Type   | Default                                  | Required |
| ---------- | ---------------------------- | ------ | ---------------------------------------- | -------- |
| account_id | Account ID to give access to | string |                                          | yes      |
| policy_arn | Policy ARN to attach to role | string | `arn:aws:iam::aws:policy/ReadOnlyAccess` | no       |
| role_name  | Role name                    | string |                                          | yes      |

## Outputs

None.

<!-- END_TF_DOCS -->

## Looking for issues?

If you're looking to raise an issue with this module, please create a new issue in the [Modernisation Platform repository](https://github.com/ministryofjustice/modernisation-platform/issues).

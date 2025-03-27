# Modernisation Platform Terraform Cross Account Access Module
[![Standards Icon]][Standards Link] [![Format Code Icon]][Format Code Link] [![Scorecards Icon]][Scorecards Link][![SCA Icon]][SCA Link] [![Terraform SCA Icon]][Terraform SCA Link]

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
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.assume-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.combined-assume-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account ID to give access to | `string` | n/a | yes |
| <a name="input_additional_trust_roles"></a> [additional\_trust\_roles](#input\_additional\_trust\_roles) | ARN of other roles to be passed as principals for sts:AssumeRole | `list(string)` | `[]` | no |
| <a name="input_additional_trust_statements"></a> [additional\_trust\_statements](#input\_additional\_trust\_statements) | Json attributes of additional iam policy documents to add to the trust policy | `list(string)` | `[]` | no |
| <a name="input_policy_arn"></a> [policy\_arn](#input\_policy\_arn) | Policy ARN for the assumable role. Defaults to arn:aws:iam::aws:policy/ReadOnlyAccess | `string` | `"arn:aws:iam::aws:policy/ReadOnlyAccess"` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of assumable role | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | n/a |
<!-- END_TF_DOCS -->

## Looking for issues?

If you're looking to raise an issue with this module, please create a new issue in the [Modernisation Platform repository](https://github.com/ministryofjustice/modernisation-platform/issues).

[Standards Link]: https://github-community.service.justice.gov.uk/repository-standards/modernisation-platform-terraform-cross-account-access "Repo standards badge."
[Standards Icon]: https://github-community.service.justice.gov.uk/repository-standards/api/modernisation-platform-terraform-cross-account-access/badge
[Format Code Icon]: https://img.shields.io/github/actions/workflow/status/ministryofjustice/modernisation-platform-terraform-cross-account-access/format-code.yml?labelColor=231f20&style=for-the-badge&label=Formate%20Code
[Format Code Link]: https://github.com/ministryofjustice/modernisation-platform-terraform-cross-account-access/actions/workflows/format-code.yml
[Scorecards Icon]: https://img.shields.io/github/actions/workflow/status/ministryofjustice/modernisation-platform-terraform-cross-account-access/scorecards.yml?branch=main&labelColor=231f20&style=for-the-badge&label=Scorecards
[Scorecards Link]: https://github.com/ministryofjustice/modernisation-platform-terraform-cross-account-access/actions/workflows/scorecards.yml
[SCA Icon]: https://img.shields.io/github/actions/workflow/status/ministryofjustice/modernisation-platform-terraform-cross-account-access/code-scanning.yml?branch=main&labelColor=231f20&style=for-the-badge&label=Secure%20Code%20Analysis
[SCA Link]: https://github.com/ministryofjustice/modernisation-platform-terraform-cross-account-access/actions/workflows/code-scanning.yml
[Terraform SCA Icon]: https://img.shields.io/github/actions/workflow/status/ministryofjustice/modernisation-platform-terraform-cross-account-access/code-scanning.yml?branch=main&labelColor=231f20&style=for-the-badge&label=Terraform%20Static%20Code%20Analysis
[Terraform SCA Link]: https://github.com/ministryofjustice/modernisation-platform-terraform-cross-account-access/actions/workflows/terraform-static-analysis.yml

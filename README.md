# modernisation-platform-terraform-cross-account-account

A simple Terraform module to configure an IAM role that is assumable from another account.

## Usage

```
module "cross-account-access" {
  source     = "https://github.com/ministryofjustice/modernisation-platform-terraform-cross-account-access"
  account_id = "123456789"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role_name  = "CrossAccountAccess"
}
```

## Inputs
| Name       | Description                  | Type   | Default                                  | Required |
|------------|------------------------------|--------|------------------------------------------|----------|
| account_id | Account ID to give access to | string |                                          | yes      |
| policy_arn | Policy ARN to attach to role | string | `arn:aws:iam::aws:policy/ReadOnlyAccess` | no       |
| role_name  | Role name                    | string |                                          | yes      |

## Outputs
None.

## Looking for issues?
If you're looking to raise an issue with this module, please create a new issue in the [Modernisation Platform repository](https://github.com/ministryofjustice/modernisation-platform/issues).

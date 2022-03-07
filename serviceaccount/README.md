

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | The email address of the service account you want the roles attached to. Use .email on terraform | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The Google Cloud Project you wish these changes to be made in | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | The role which you want applied to the Service Account | `string` | n/a | yes |

## Outputs

No outputs.

## Example with role defined in terraform

```hcl
module "cloudrun-binding" {
  source = "git::ssh://git@github.com/userbradley/terraform-module-google-iam-binding.git//serviceaccount"
  email  = google_service_account.cloudrun.email
  project = var.project
  role = google_project_iam_custom_role.cloudrun.role_id
}
```

## Example with role already in GCP

```hcl
module "serviceaccount-binding" {
  source = "git::ssh://git@github.com/userbradley/terraform-module-google-iam-binding.git//serviceaccount"
  email  = google_service_account.cloudrun.email
  project = var.project
  role = "CustomServiceAccountActAs"
}
```

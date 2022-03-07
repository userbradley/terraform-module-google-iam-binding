module "cloudrun-binding" {
  source = "./modules/binding"
  email  = google_service_account.cloudrun.email
  project = var.project
  role = google_project_iam_custom_role.cloudrun.role_id
}
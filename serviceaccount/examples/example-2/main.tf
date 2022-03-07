module "serviceaccount-binding" {
  source = "./modules/binding"
  email  = google_service_account.cloudrun.email
  project = var.project
  role = "CustomServiceAccountActAs"
}
resource "google_project_iam_member" "binding" {
  role = "projects/${var.project}/roles/${var.role}"
  project = var.project
  member = "serviceAccount:${var.email}"
}
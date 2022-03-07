variable "project" {
  type = string
  description = "The Google Cloud Project you wish these changes to be made in"
}
variable "email" {
  type = string
  description = "The email address of the service account you want the roles attached to. Use .email on terraform"
}
variable "role" {
  type = string
  description = "The role which you want applied to the Service Account"
}
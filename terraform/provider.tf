
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

resource "random_string" "flask-secret-key" {
  length = 16
  special = true
  override_special = "/@\" "
}

resource "random_string" "username" {
  length           = 16
  special          = true
  override_special = "mcl/@£$"
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
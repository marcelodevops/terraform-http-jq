provider "http" {
  version = "1.2.0"
}

data "http" "ipranges" {
  url = var.url

  request_headers = {
    Accept = "application/json"
  }
}
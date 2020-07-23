provider "http" {
  version = "1.2.0"
}

data "http" "ipranges" {
  url = var.url

  request_headers = {
    Accept = "application/json"
  }
}
data "external" "script" {
    program = ["bash", "./filter.sh", "${data.http.ipranges.body}"]
    

}
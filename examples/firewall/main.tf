module "fw" {
  source = "../.."

  name = "allow_icmp"
  labels = {
    terraform = "true"
    env       = "example"
  }
  rules = [{
    direction = "in"
    protocol  = "icmp"
    source_ips = [
      "0.0.0.0/0",
    ]
  }]
  label_selector = "allow_icmp=true"
}

consul {
  address = "consul:8500"
  retry {
    enabled = true
    attempts = 12
    backoff = "250ms"
  }
}

template {
  source = "etc/nginx/conf.d/load-balancer.ctmpl"
  destination = "/etc/nginx/conf.d/load-balancer.conf"
  command = "sevice nginx reload"
}

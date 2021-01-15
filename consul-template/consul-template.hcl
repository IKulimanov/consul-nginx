consul {
  address = "consul.service.consul:8500"
  retry {
    enabled = true
    attempts = 12
    backoff = "250ms"
    max_backoff = "1m"
  }
}

template {
  source	= "etc/nginx/conf.d/load-balancer.conf.ctmpl"
  destination	= "/etc/nginx/conf.d/load-balancer.conf"
  command	= "/usr/sbin/nginx -s reload"
}

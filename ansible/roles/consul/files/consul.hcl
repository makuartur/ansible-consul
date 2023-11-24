connect {
  enabled=true
}
ports {
  grpc = 8502
  grpc_tls = 8503
}
server=true
retry_join=["consul-master1:8301", "consul-master2:8301", "consul-master3:8301"],
bootstrap_expect=3
ui_config {
  enabled = true
  metrics_provider = "prometheus"
  metrics_proxy {
    base_url = "http:/prometheus1:9090"
  }
  dashboard_url_templates {
    service = "http://prometheus1:3000/d/abcfd210-4b5c-4a1d-883b-c97b9dc754ed/services?orgId=1&var-Service={{Service.Name}}&refresh=5s"
  }
}
log_level = "debug"
log_file = "/var/log/consul.log"
encrypt = "s0YeZsTlnWqyckTMp4XG2r9Nxl3fDt2o1UWwRffYUuo="
client_addr = "192.168.1.82"
bind_addr = "192.168.1.82"
data_dir = "/opt/consul"
ca_file = "/etc/consul.d/consul-agent-ca.pem"
cert_file = "/etc/consul.d/dc1-server-consul-2.pem"
key_file = "/etc/consul.d/dc1-server-consul-2-key.pem"
auto_encrypt {
  allow_tls = true
}
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true


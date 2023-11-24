data_dir = "/opt/consul"
ports {
 grpc = 8502
}
  server = false,
  node_name = "consul-node1"
  encrypt = "s0YeZsTlnWqyckTMp4XG2r9Nxl3fDt2o1UWwRffYUuo="
  start_join =["consul-master1:8301", "consul-master2:8301", "consul-master3:8301"]
  verify_incoming = false
  verify_outgoing = true
  verify_server_hostname = true
  ca_file = "/etc/consul.d/consul-agent-ca.pem"
  auto_encrypt = {
    tls = true
}

client_addr = "127.0.0.1"
bind_addr = "192.168.1.86"


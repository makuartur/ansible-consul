service {
  name = "backend"
  # backend runs on port 7000.
  port = 7000
  meta {
  version = "v1"
  prometheus_port = "20201"
  }
 # The backend service doesn't call
 # any other services so it doesn't
 # need an "upstreams" stanza.
 #
 # The connect stanza is still required to
 # indicate that it needs a sidecar proxy.
  connect {
    sidecar_service {
 # backend's proxy will listen on port 22000.
    port = 22000
    proxy {
      config {
        envoy_prometheus_bind_addr = "0.0.0.0:20201"
      }
    }
    }
  }
  checks = [
  {
    name = "Health endpoint"
    http = "http://localhost:7000/healthz"
    interval = "10s"
    timeout = "1s"
  }]

}

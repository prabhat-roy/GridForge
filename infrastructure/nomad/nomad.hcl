datacenter = "dc1"
data_dir   = "/var/lib/nomad"
server { enabled = true  bootstrap_expect = 3 }
client { enabled = true }
acl { enabled = true }
ui  { enabled = true }
telemetry { collection_interval = "1s"  prometheus_metrics = true  publish_allocation_metrics = true }

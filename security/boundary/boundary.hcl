controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/gridforge" }
}
worker {
  name = "worker-gridforge-1"
  controllers = ["controller-1.boundary.gridforge.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/gridforge-boundary"
}

job "hello" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello-group" {
    count = 1

    restart {
      attempts = 10
      interval = "5m"
      delay    = "10s"
      mode     = "delay"
    }

    task "hello-task" {
      driver = "docker"

      config {
        image      = "devops-hello:latest"
        force_pull = false
      }

      resources {
        cpu    = 100
        memory = 64
      }

      logs {
        max_files     = 5
        max_file_size = 10
      }
    }
  }
}

resource "aws_ecs_cluster" "clouddeploy" {
  name = "clouddeploy-cluster"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_ecs_service" "clouddeploy" {
  name             = "clouddeploy-service"
  cluster          = aws_ecs_cluster.clouddeploy.id
  task_definition  = "clouddeploy-test:4"
  desired_count    = 1
  launch_type      = "FARGATE"
  platform_version = "LATEST"

  network_configuration {
    subnets = [
      "subnet-0eba3668712baa9a2"
    ]

    security_groups = [
      "sg-0c1bfbe5f5c3368e0"
    ]

    assign_public_ip = true
  }

  lifecycle {
    prevent_destroy = true

    # GitHub Actions manages application deployments.
    ignore_changes = [
      task_definition
    ]
  }
}
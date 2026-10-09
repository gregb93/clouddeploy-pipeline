output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.clouddeploy.name
}

output "ecs_cluster_arn" {
  description = "ARN of the ECS cluster"
  value       = aws_ecs_cluster.clouddeploy.arn
}

output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.clouddeploy.name
}

output "ecs_service_id" {
  description = "ID of the ECS service"
  value       = aws_ecs_service.clouddeploy.id
}
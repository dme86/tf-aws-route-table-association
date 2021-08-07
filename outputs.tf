output "route_table_association_ids" {
  description = "List of IDs of the route table association"
  value       = aws_route_table_association.this.*.id
}

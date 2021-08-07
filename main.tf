resource "aws_route_table_association" "private" {
  count          = length(var.subnet_cidr)
  subnet_id      = element(var.subnet_id, count.index)
  route_table_id = var.route_table_id
}

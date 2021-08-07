### terraform route-table-association module

Provides a resource to create an association between a route table and a subnet or a route table and an internet gateway or virtual private gateway.

## Example for main.tf

```hcl
module "route-table-association" {
  source         = "github.com/dme86/tf-aws-route-table-association?ref=v0.1"
  subnet_cidr    = var.cidr_block
  subnet_id      = module.subnet.this_subnet_id
  route_table_id = module.vpc.main_route_table_id
}
```

## Example outputs.tf

```hcl
output "private_route_table_association_ids" {
  value = module.route-table-association.private_route_table_association_ids
}
```

## Attributes
|Attribute|Description|Default|
|--|--|--|
|subnet_id|(Optional) The subnet ID to create an association. Conflicts with gateway_id.||
|gateway_id|(Optional) The gateway ID to create an association. Conflicts with subnet_id.||
|route_table_id|(Required) The ID of the routing table to associate with.||

## More

Check out my other [terraform-aws-modules](https://github.com/dme86?tab=repositories&q=tf-aws)

## Contact

[Linkedin](https://www.linkedin.com/in/dmeier86/)

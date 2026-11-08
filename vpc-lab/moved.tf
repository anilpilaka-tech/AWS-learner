# moved.tf — the whole refactor in 9 blocks.
#
# Each block tells Terraform: the resource already in state at the old
# (flat) address is the same resource at the new (module) address.
# No resource is created or destroyed; state is rewritten only.
# Remove this file AFTER the first successful apply if you like — the
# moves are recorded in state then — but keeping it is harmless.

moved {
  from = aws_vpc.lab
  to   = module.lab_vpc.aws_vpc.this
}

moved {
  from = aws_subnet.public_1
  to   = module.lab_vpc.aws_subnet.public[0]
}

moved {
  from = aws_subnet.public_2
  to   = module.lab_vpc.aws_subnet.public[1]
}

moved {
  from = aws_subnet.private_1
  to   = module.lab_vpc.aws_subnet.private[0]
}

moved {
  from = aws_subnet.private_2
  to   = module.lab_vpc.aws_subnet.private[1]
}

moved {
  from = aws_internet_gateway.lab
  to   = module.lab_vpc.aws_internet_gateway.this
}

moved {
  from = aws_route_table.public
  to   = module.lab_vpc.aws_route_table.public
}

moved {
  from = aws_route_table_association.public_1
  to   = module.lab_vpc.aws_route_table_association.public[0]
}

moved {
  from = aws_route_table_association.public_2
  to   = module.lab_vpc.aws_route_table_association.public[1]
}

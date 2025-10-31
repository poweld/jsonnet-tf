{
  local block = self,
  new(terraformName, clientVpnEndpointId, destinationCidrBlock, targetVpcSubnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_client_vpn_route",
          type:: "resource",
          attributes:: ["client_vpn_endpoint_id", "description", "destination_cidr_block", "id", "origin", "region", "target_vpc_subnet_id", "type"],
        },
      },
    }
    + block.withClientVpnEndpointId(clientVpnEndpointId)
    + block.withDestinationCidrBlock(destinationCidrBlock)
    + block.withTargetVpcSubnetId(targetVpcSubnetId)
  ),
  withClientVpnEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_vpn_endpoint_id" expected to be of type "string"';
    {
      client_vpn_endpoint_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDestinationCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withTargetVpcSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_vpc_subnet_id" expected to be of type "string"';
    {
      target_vpc_subnet_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

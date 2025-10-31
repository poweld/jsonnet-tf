{
  local block = self,
  new(terraformName, clientVpnEndpointId, subnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_client_vpn_network_association",
          type:: "resource",
          attributes:: ["association_id", "client_vpn_endpoint_id", "id", "region", "subnet_id", "vpc_id"],
        },
      },
    }
    + block.withClientVpnEndpointId(clientVpnEndpointId)
    + block.withSubnetId(subnetId)
  ),
  withClientVpnEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_vpn_endpoint_id" expected to be of type "string"';
    {
      client_vpn_endpoint_id: converted,
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
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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

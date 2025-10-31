{
  local block = self,
  new(terraformName, virtualInterfaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_hosted_private_virtual_interface_accepter",
          type:: "resource",
          attributes:: ["arn", "dx_gateway_id", "id", "region", "tags", "tags_all", "virtual_interface_id", "vpn_gateway_id"],
        },
      },
    }
    + block.withVirtualInterfaceId(virtualInterfaceId)
  ),
  withDxGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"dx_gateway_id" expected to be of type "string"';
    {
      dx_gateway_id: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withVirtualInterfaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_interface_id" expected to be of type "string"';
    {
      virtual_interface_id: converted,
    }
  ),
  withVpnGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_gateway_id" expected to be of type "string"';
    {
      vpn_gateway_id: converted,
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

{
  local block = self,
  new(terraformName, addressFamily, bgpAsn, connectionId, name, ownerAccountId, vlan):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_hosted_private_virtual_interface",
          type:: "resource",
          attributes:: ["address_family", "amazon_address", "amazon_side_asn", "arn", "aws_device", "bgp_asn", "bgp_auth_key", "connection_id", "customer_address", "id", "jumbo_frame_capable", "mtu", "name", "owner_account_id", "region", "vlan"],
        },
      },
    }
    + block.withAddressFamily(addressFamily)
    + block.withBgpAsn(bgpAsn)
    + block.withConnectionId(connectionId)
    + block.withName(name)
    + block.withOwnerAccountId(ownerAccountId)
    + block.withVlan(vlan)
  ),
  withAddressFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_family" expected to be of type "string"';
    {
      address_family: converted,
    }
  ),
  withAmazonAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"amazon_address" expected to be of type "string"';
    {
      amazon_address: converted,
    }
  ),
  withBgpAsn(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"bgp_asn" expected to be of type "number"';
    {
      bgp_asn: converted,
    }
  ),
  withBgpAuthKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_auth_key" expected to be of type "string"';
    {
      bgp_auth_key: converted,
    }
  ),
  withConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
    }
  ),
  withCustomerAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_address" expected to be of type "string"';
    {
      customer_address: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMtu(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"mtu" expected to be of type "number"';
    {
      mtu: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOwnerAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
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
  withVlan(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vlan" expected to be of type "number"';
    {
      vlan: converted,
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

{
  local block = self,
  new(terraformName, addressFamily, bgpAsn, virtualInterfaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_bgp_peer",
          type:: "resource",
          attributes:: ["address_family", "amazon_address", "aws_device", "bgp_asn", "bgp_auth_key", "bgp_peer_id", "bgp_status", "customer_address", "id", "region", "virtual_interface_id"],
        },
      },
    }
    + block.withAddressFamily(addressFamily)
    + block.withBgpAsn(bgpAsn)
    + block.withVirtualInterfaceId(virtualInterfaceId)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withVirtualInterfaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_interface_id" expected to be of type "string"';
    {
      virtual_interface_id: converted,
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

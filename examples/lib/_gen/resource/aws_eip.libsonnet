{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eip",
          type:: "resource",
          attributes:: ["address", "allocation_id", "arn", "associate_with_private_ip", "association_id", "carrier_ip", "customer_owned_ip", "customer_owned_ipv4_pool", "domain", "id", "instance", "ipam_pool_id", "network_border_group", "network_interface", "private_dns", "private_ip", "ptr_record", "public_dns", "public_ip", "public_ipv4_pool", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"address" expected to be of type "string"';
    {
      address: converted,
    }
  ),
  withAssociateWithPrivateIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"associate_with_private_ip" expected to be of type "string"';
    {
      associate_with_private_ip: converted,
    }
  ),
  withCustomerOwnedIpv4Pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ipv4_pool" expected to be of type "string"';
    {
      customer_owned_ipv4_pool: converted,
    }
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstance(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance" expected to be of type "string"';
    {
      instance: converted,
    }
  ),
  withIpamPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_pool_id" expected to be of type "string"';
    {
      ipam_pool_id: converted,
    }
  ),
  withNetworkBorderGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_border_group" expected to be of type "string"';
    {
      network_border_group: converted,
    }
  ),
  withNetworkInterface(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface" expected to be of type "string"';
    {
      network_interface: converted,
    }
  ),
  withPublicIpv4Pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ipv4_pool" expected to be of type "string"';
    {
      public_ipv4_pool: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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

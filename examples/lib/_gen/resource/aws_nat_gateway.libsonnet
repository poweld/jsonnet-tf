{
  local block = self,
  new(terraformName, subnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_nat_gateway",
          type:: "resource",
          attributes:: ["allocation_id", "association_id", "connectivity_type", "id", "network_interface_id", "private_ip", "public_ip", "region", "secondary_allocation_ids", "secondary_private_ip_address_count", "secondary_private_ip_addresses", "subnet_id", "tags", "tags_all"],
        },
      },
    }
    + block.withSubnetId(subnetId)
  ),
  withAllocationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"allocation_id" expected to be of type "string"';
    {
      allocation_id: converted,
    }
  ),
  withConnectivityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"connectivity_type" expected to be of type "string"';
    {
      connectivity_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrivateIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip" expected to be of type "string"';
    {
      private_ip: converted,
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
  withSecondaryAllocationIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_allocation_ids" expected to be of type "set"';
    {
      secondary_allocation_ids: converted,
    }
  ),
  withSecondaryAllocationIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_allocation_ids" expected to be of type "set"';
    {
      secondary_allocation_ids+: converted,
    }
  ),
  withSecondaryPrivateIpAddressCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"secondary_private_ip_address_count" expected to be of type "number"';
    {
      secondary_private_ip_address_count: converted,
    }
  ),
  withSecondaryPrivateIpAddresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_private_ip_addresses" expected to be of type "set"';
    {
      secondary_private_ip_addresses: converted,
    }
  ),
  withSecondaryPrivateIpAddressesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_private_ip_addresses" expected to be of type "set"';
    {
      secondary_private_ip_addresses+: converted,
    }
  ),
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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

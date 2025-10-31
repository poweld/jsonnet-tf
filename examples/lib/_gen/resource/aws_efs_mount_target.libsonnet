{
  local block = self,
  new(terraformName, fileSystemId, subnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_mount_target",
          type:: "resource",
          attributes:: ["availability_zone_id", "availability_zone_name", "dns_name", "file_system_arn", "file_system_id", "id", "ip_address", "ip_address_type", "ipv6_address", "mount_target_dns_name", "network_interface_id", "owner_id", "region", "security_groups", "subnet_id"],
        },
      },
    }
    + block.withFileSystemId(fileSystemId)
    + block.withSubnetId(subnetId)
  ),
  withFileSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address" expected to be of type "string"';
    {
      ip_address: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  withIpv6Address(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_address" expected to be of type "string"';
    {
      ipv6_address: converted,
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
  withSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  withSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
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

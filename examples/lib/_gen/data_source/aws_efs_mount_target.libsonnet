{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_mount_target",
          type:: "data",
          attributes:: ["access_point_id", "availability_zone_id", "availability_zone_name", "dns_name", "file_system_arn", "file_system_id", "id", "ip_address", "ip_address_type", "ipv6_address", "mount_target_dns_name", "mount_target_id", "network_interface_id", "owner_id", "region", "security_groups", "subnet_id"],
        },
      },
    }
  ),
  withAccessPointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_point_id" expected to be of type "string"';
    {
      access_point_id: converted,
    }
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
  withMountTargetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"mount_target_id" expected to be of type "string"';
    {
      mount_target_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

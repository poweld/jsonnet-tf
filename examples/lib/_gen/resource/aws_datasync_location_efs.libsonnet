{
  local block = self,
  new(terraformName, efsFileSystemArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_location_efs",
          type:: "resource",
          attributes:: ["access_point_arn", "arn", "efs_file_system_arn", "file_system_access_role_arn", "id", "in_transit_encryption", "region", "subdirectory", "tags", "tags_all", "uri"],
        },
      },
    }
    + block.withEfsFileSystemArn(efsFileSystemArn)
  ),
  withAccessPointArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_point_arn" expected to be of type "string"';
    {
      access_point_arn: converted,
    }
  ),
  withEfsFileSystemArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"efs_file_system_arn" expected to be of type "string"';
    {
      efs_file_system_arn: converted,
    }
  ),
  withFileSystemAccessRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_access_role_arn" expected to be of type "string"';
    {
      file_system_access_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInTransitEncryption(value):: (
    local converted = value;
    assert std.isString(converted) : '"in_transit_encryption" expected to be of type "string"';
    {
      in_transit_encryption: converted,
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
  withSubdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
  ec2_config:: {
    local block = self,
    new(securityGroupArns, subnetArn):: (
      {}
      + block.withSecurityGroupArns(securityGroupArns)
      + block.withSubnetArn(subnetArn)
    ),
    withSecurityGroupArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_arns" expected to be of type "set"';
      {
        security_group_arns: converted,
      }
    ),
    withSecurityGroupArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_arns" expected to be of type "set"';
      {
        security_group_arns+: converted,
      }
    ),
    withSubnetArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_arn" expected to be of type "string"';
      {
        subnet_arn: converted,
      }
    ),
  },
  withEc2Config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_config: value,
    }
  ),
  withEc2ConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_config+: converted,
    }
  ),
}

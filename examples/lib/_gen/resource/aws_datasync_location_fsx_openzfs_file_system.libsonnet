{
  local block = self,
  new(terraformName, fsxFilesystemArn, securityGroupArns):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_location_fsx_openzfs_file_system",
          type:: "resource",
          attributes:: ["arn", "creation_time", "fsx_filesystem_arn", "id", "region", "security_group_arns", "subdirectory", "tags", "tags_all", "uri"],
        },
      },
    }
    + block.withFsxFilesystemArn(fsxFilesystemArn)
    + block.withSecurityGroupArns(securityGroupArns)
  ),
  withFsxFilesystemArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"fsx_filesystem_arn" expected to be of type "string"';
    {
      fsx_filesystem_arn: converted,
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
  protocol:: {
    local block = self,
    new():: (
      {}
    ),
    nfs:: {
      local block = self,
      new():: (
        {}
      ),
      mount_options:: {
        local block = self,
        new():: (
          {}
        ),
        withVersion(value):: (
          local converted = value;
          assert std.isString(converted) : '"version" expected to be of type "string"';
          {
            version: converted,
          }
        ),
      },
      withMountOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mount_options: value,
        }
      ),
      withMountOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mount_options+: converted,
        }
      ),
    },
    withNfs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs: value,
      }
    ),
    withNfsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs+: converted,
      }
    ),
  },
  withProtocol(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol: value,
    }
  ),
  withProtocolMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol+: converted,
    }
  ),
}

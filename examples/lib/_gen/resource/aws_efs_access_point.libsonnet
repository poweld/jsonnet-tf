{
  local block = self,
  new(terraformName, fileSystemId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_access_point",
          type:: "resource",
          attributes:: ["arn", "file_system_arn", "file_system_id", "id", "owner_id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withFileSystemId(fileSystemId)
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
  posix_user:: {
    local block = self,
    new(gid, uid):: (
      {}
      + block.withGid(gid)
      + block.withUid(uid)
    ),
    withGid(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"gid" expected to be of type "number"';
      {
        gid: converted,
      }
    ),
    withSecondaryGids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_gids" expected to be of type "set"';
      {
        secondary_gids: converted,
      }
    ),
    withSecondaryGidsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_gids" expected to be of type "set"';
      {
        secondary_gids+: converted,
      }
    ),
    withUid(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"uid" expected to be of type "number"';
      {
        uid: converted,
      }
    ),
  },
  root_directory:: {
    local block = self,
    new():: (
      {}
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    creation_info:: {
      local block = self,
      new(ownerGid, ownerUid, permissions):: (
        {}
        + block.withOwnerGid(ownerGid)
        + block.withOwnerUid(ownerUid)
        + block.withPermissions(permissions)
      ),
      withOwnerGid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"owner_gid" expected to be of type "number"';
        {
          owner_gid: converted,
        }
      ),
      withOwnerUid(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"owner_uid" expected to be of type "number"';
        {
          owner_uid: converted,
        }
      ),
      withPermissions(value):: (
        local converted = value;
        assert std.isString(converted) : '"permissions" expected to be of type "string"';
        {
          permissions: converted,
        }
      ),
    },
    withCreationInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        creation_info: value,
      }
    ),
    withCreationInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        creation_info+: converted,
      }
    ),
  },
  withPosixUser(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_user: value,
    }
  ),
  withRootDirectory(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_directory: value,
    }
  ),
  withPosixUserMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_user+: converted,
    }
  ),
  withRootDirectoryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_directory+: converted,
    }
  ),
}

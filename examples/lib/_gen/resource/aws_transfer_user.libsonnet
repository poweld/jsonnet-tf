{
  local block = self,
  new(terraformName, role, serverId, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_user",
          type:: "resource",
          attributes:: ["arn", "home_directory", "home_directory_type", "id", "policy", "region", "role", "server_id", "tags", "tags_all", "user_name"],
        },
      },
    }
    + block.withRole(role)
    + block.withServerId(serverId)
    + block.withUserName(userName)
  ),
  withHomeDirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_directory" expected to be of type "string"';
    {
      home_directory: converted,
    }
  ),
  withHomeDirectoryType(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_directory_type" expected to be of type "string"';
    {
      home_directory_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  withServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_id" expected to be of type "string"';
    {
      server_id: converted,
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
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  home_directory_mappings:: {
    local block = self,
    new(entry, target):: (
      {}
      + block.withEntry(entry)
      + block.withTarget(target)
    ),
    withEntry(value):: (
      local converted = value;
      assert std.isString(converted) : '"entry" expected to be of type "string"';
      {
        entry: converted,
      }
    ),
    withTarget(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
  },
  posix_profile:: {
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
  },
  withHomeDirectoryMappings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      home_directory_mappings: value,
    }
  ),
  withPosixProfile(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_profile: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withHomeDirectoryMappingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      home_directory_mappings+: converted,
    }
  ),
  withPosixProfileMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      posix_profile+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, externalId, serverId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_access",
          type:: "resource",
          attributes:: ["external_id", "home_directory", "home_directory_type", "id", "policy", "region", "role", "server_id"],
        },
      },
    }
    + block.withExternalId(externalId)
    + block.withServerId(serverId)
  ),
  withExternalId(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_id" expected to be of type "string"';
    {
      external_id: converted,
    }
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

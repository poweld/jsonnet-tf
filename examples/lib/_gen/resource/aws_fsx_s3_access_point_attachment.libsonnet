{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_s3_access_point_attachment",
          type:: "resource",
          attributes:: ["name", "region", "s3_access_point_alias", "s3_access_point_arn", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  openzfs_configuration:: {
    local block = self,
    new(volumeId):: (
      {}
      + block.withVolumeId(volumeId)
    ),
    withVolumeId(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_id" expected to be of type "string"';
      {
        volume_id: converted,
      }
    ),
    file_system_identity:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
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
          assert std.isArray(converted) : '"secondary_gids" expected to be of type "list"';
          {
            secondary_gids: converted,
          }
        ),
        withSecondaryGidsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"secondary_gids" expected to be of type "list"';
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
      withPosixUser(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          posix_user: value,
        }
      ),
      withPosixUserMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          posix_user+: converted,
        }
      ),
    },
    withFileSystemIdentity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_identity: value,
      }
    ),
    withFileSystemIdentityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        file_system_identity+: converted,
      }
    ),
  },
  s3_access_point:: {
    local block = self,
    new():: (
      {}
    ),
    withPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy" expected to be of type "string"';
      {
        policy: converted,
      }
    ),
    vpc_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withVpcId(value):: (
        local converted = value;
        assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
        {
          vpc_id: converted,
        }
      ),
    },
    withVpcConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_configuration: value,
      }
    ),
    withVpcConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_configuration+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withOpenzfsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      openzfs_configuration: value,
    }
  ),
  withS3AccessPoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_access_point: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withOpenzfsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      openzfs_configuration+: converted,
    }
  ),
  withS3AccessPointMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_access_point+: converted,
    }
  ),
}

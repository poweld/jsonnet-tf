{
  local block = self,
  new(terraformName, autoUpdate, azMode, databaseName, environmentId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_finspace_kx_dataview",
          type:: "resource",
          attributes:: ["arn", "auto_update", "availability_zone_id", "az_mode", "changeset_id", "created_timestamp", "database_name", "description", "environment_id", "id", "last_modified_timestamp", "name", "read_write", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withAutoUpdate(autoUpdate)
    + block.withAzMode(azMode)
    + block.withDatabaseName(databaseName)
    + block.withEnvironmentId(environmentId)
    + block.withName(name)
  ),
  withAutoUpdate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_update" expected to be of type "bool"';
    {
      auto_update: converted,
    }
  ),
  withAvailabilityZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_id" expected to be of type "string"';
    {
      availability_zone_id: converted,
    }
  ),
  withAzMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"az_mode" expected to be of type "string"';
    {
      az_mode: converted,
    }
  ),
  withChangesetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"changeset_id" expected to be of type "string"';
    {
      changeset_id: converted,
    }
  ),
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnvironmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withReadWrite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"read_write" expected to be of type "bool"';
    {
      read_write: converted,
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
  segment_configurations:: {
    local block = self,
    new(dbPaths, volumeName):: (
      {}
      + block.withDbPaths(dbPaths)
      + block.withVolumeName(volumeName)
    ),
    withDbPaths(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"db_paths" expected to be of type "list"';
      {
        db_paths: converted,
      }
    ),
    withDbPathsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"db_paths" expected to be of type "list"';
      {
        db_paths+: converted,
      }
    ),
    withOnDemand(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"on_demand" expected to be of type "bool"';
      {
        on_demand: converted,
      }
    ),
    withVolumeName(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_name" expected to be of type "string"';
      {
        volume_name: converted,
      }
    ),
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
  withSegmentConfigurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segment_configurations: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withSegmentConfigurationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segment_configurations+: converted,
    }
  ),
}

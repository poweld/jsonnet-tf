{
  local block = self,
  new(terraformName, availabilityZones, azMode, environmentId, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_finspace_kx_volume",
          type:: "resource",
          attributes:: ["arn", "attached_clusters", "availability_zones", "az_mode", "created_timestamp", "description", "environment_id", "id", "last_modified_timestamp", "name", "region", "status", "status_reason", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withAvailabilityZones(availabilityZones)
    + block.withAzMode(azMode)
    + block.withEnvironmentId(environmentId)
    + block.withName(name)
    + block.withType(type)
  ),
  withAvailabilityZones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones: converted,
    }
  ),
  withAvailabilityZonesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones+: converted,
    }
  ),
  withAzMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"az_mode" expected to be of type "string"';
    {
      az_mode: converted,
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
  nas1_configuration:: {
    local block = self,
    new(size, type):: (
      {}
      + block.withSize(size)
      + block.withType(type)
    ),
    withSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  withNas1Configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nas1_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withNas1ConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nas1_configuration+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, recoveryGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53recoveryreadiness_recovery_group",
          type:: "resource",
          attributes:: ["arn", "cells", "id", "recovery_group_name", "tags", "tags_all"],
        },
      },
    }
    + block.withRecoveryGroupName(recoveryGroupName)
  ),
  withCells(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cells" expected to be of type "list"';
    {
      cells: converted,
    }
  ),
  withCellsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cells" expected to be of type "list"';
    {
      cells+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withRecoveryGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"recovery_group_name" expected to be of type "string"';
    {
      recovery_group_name: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

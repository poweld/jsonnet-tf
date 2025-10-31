{
  local block = self,
  new(terraformName, name, scheduleExpression):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_restore_testing_plan",
          type:: "resource",
          attributes:: ["arn", "name", "region", "schedule_expression", "schedule_expression_timezone", "start_window_hours", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withScheduleExpression(scheduleExpression)
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
  withScheduleExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
    {
      schedule_expression: converted,
    }
  ),
  withScheduleExpressionTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression_timezone" expected to be of type "string"';
    {
      schedule_expression_timezone: converted,
    }
  ),
  withStartWindowHours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"start_window_hours" expected to be of type "number"';
    {
      start_window_hours: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  recovery_point_selection:: {
    local block = self,
    new(algorithm, includeVaults, recoveryPointTypes):: (
      {}
      + block.withAlgorithm(algorithm)
      + block.withIncludeVaults(includeVaults)
      + block.withRecoveryPointTypes(recoveryPointTypes)
    ),
    withAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"algorithm" expected to be of type "string"';
      {
        algorithm: converted,
      }
    ),
    withExcludeVaults(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_vaults" expected to be of type "set"';
      {
        exclude_vaults: converted,
      }
    ),
    withExcludeVaultsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_vaults" expected to be of type "set"';
      {
        exclude_vaults+: converted,
      }
    ),
    withIncludeVaults(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_vaults" expected to be of type "set"';
      {
        include_vaults: converted,
      }
    ),
    withIncludeVaultsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_vaults" expected to be of type "set"';
      {
        include_vaults+: converted,
      }
    ),
    withRecoveryPointTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recovery_point_types" expected to be of type "set"';
      {
        recovery_point_types: converted,
      }
    ),
    withRecoveryPointTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recovery_point_types" expected to be of type "set"';
      {
        recovery_point_types+: converted,
      }
    ),
    withSelectionWindowDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"selection_window_days" expected to be of type "number"';
      {
        selection_window_days: converted,
      }
    ),
  },
  withRecoveryPointSelection(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recovery_point_selection: value,
    }
  ),
  withRecoveryPointSelectionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recovery_point_selection+: converted,
    }
  ),
}

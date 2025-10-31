{
  local block = self,
  new(terraformName, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_prometheus_workspace_configuration",
          type:: "resource",
          attributes:: ["region", "retention_period_in_days", "workspace_id"],
        },
      },
    }
    + block.withWorkspaceId(workspaceId)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRetentionPeriodInDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period_in_days" expected to be of type "number"';
    {
      retention_period_in_days: converted,
    }
  ),
  withWorkspaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  limits_per_label_set:: {
    local block = self,
    new(labelSet):: (
      {}
      + block.withLabelSet(labelSet)
    ),
    withLabelSet(value):: (
      local converted = value;
      assert std.isObject(converted) : '"label_set" expected to be of type "map"';
      {
        label_set: converted,
      }
    ),
    limits:: {
      local block = self,
      new(maxSeries):: (
        {}
        + block.withMaxSeries(maxSeries)
      ),
      withMaxSeries(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_series" expected to be of type "number"';
        {
          max_series: converted,
        }
      ),
    },
    withLimits(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        limits: value,
      }
    ),
    withLimitsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        limits+: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withLimitsPerLabelSet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits_per_label_set: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLimitsPerLabelSetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits_per_label_set+: converted,
    }
  ),
}

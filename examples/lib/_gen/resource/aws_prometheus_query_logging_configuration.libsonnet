{
  local block = self,
  new(terraformName, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_prometheus_query_logging_configuration",
          type:: "resource",
          attributes:: ["region", "workspace_id"],
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
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_logs:: {
      local block = self,
      new(logGroupArn):: (
        {}
        + block.withLogGroupArn(logGroupArn)
      ),
      withLogGroupArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
    },
    filters:: {
      local block = self,
      new(qspThreshold):: (
        {}
        + block.withQspThreshold(qspThreshold)
      ),
      withQspThreshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"qsp_threshold" expected to be of type "number"';
        {
          qsp_threshold: converted,
        }
      ),
    },
    withCloudwatchLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    withFilters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters: value,
      }
    ),
    withCloudwatchLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    withFiltersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters+: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
}

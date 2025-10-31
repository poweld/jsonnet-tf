{
  local block = self,
  new(terraformName, logGroupName, name, pattern):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_metric_filter",
          type:: "resource",
          attributes:: ["apply_on_transformed_logs", "id", "log_group_name", "name", "pattern", "region"],
        },
      },
    }
    + block.withLogGroupName(logGroupName)
    + block.withName(name)
    + block.withPattern(pattern)
  ),
  withApplyOnTransformedLogs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_on_transformed_logs" expected to be of type "bool"';
    {
      apply_on_transformed_logs: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLogGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
    {
      log_group_name: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"pattern" expected to be of type "string"';
    {
      pattern: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  metric_transformation:: {
    local block = self,
    new(name, namespace, value):: (
      {}
      + block.withName(name)
      + block.withNamespace(namespace)
      + block.withValue(value)
    ),
    withDefaultValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
      }
    ),
    withDimensions(value):: (
      local converted = value;
      assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
      {
        dimensions: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    withUnit(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit" expected to be of type "string"';
      {
        unit: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withMetricTransformation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_transformation: value,
    }
  ),
  withMetricTransformationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_transformation+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, observabilityConfigurationName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apprunner_observability_configuration",
          type:: "resource",
          attributes:: ["arn", "id", "latest", "observability_configuration_name", "observability_configuration_revision", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withObservabilityConfigurationName(observabilityConfigurationName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withObservabilityConfigurationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"observability_configuration_name" expected to be of type "string"';
    {
      observability_configuration_name: converted,
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
  trace_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withVendor(value):: (
      local converted = value;
      assert std.isString(converted) : '"vendor" expected to be of type "string"';
      {
        vendor: converted,
      }
    ),
  },
  withTraceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trace_configuration: value,
    }
  ),
  withTraceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trace_configuration+: converted,
    }
  ),
}

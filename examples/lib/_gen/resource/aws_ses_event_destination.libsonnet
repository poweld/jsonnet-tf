{
  local block = self,
  new(terraformName, configurationSetName, matchingTypes, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ses_event_destination",
          type:: "resource",
          attributes:: ["arn", "configuration_set_name", "enabled", "id", "matching_types", "name", "region"],
        },
      },
    }
    + block.withConfigurationSetName(configurationSetName)
    + block.withMatchingTypes(matchingTypes)
    + block.withName(name)
  ),
  withConfigurationSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMatchingTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_types" expected to be of type "set"';
    {
      matching_types: converted,
    }
  ),
  withMatchingTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_types" expected to be of type "set"';
    {
      matching_types+: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cloudwatch_destination:: {
    local block = self,
    new(defaultValue, dimensionName, valueSource):: (
      {}
      + block.withDefaultValue(defaultValue)
      + block.withDimensionName(dimensionName)
      + block.withValueSource(valueSource)
    ),
    withDefaultValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
      }
    ),
    withDimensionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"dimension_name" expected to be of type "string"';
      {
        dimension_name: converted,
      }
    ),
    withValueSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"value_source" expected to be of type "string"';
      {
        value_source: converted,
      }
    ),
  },
  kinesis_destination:: {
    local block = self,
    new(roleArn, streamArn):: (
      {}
      + block.withRoleArn(roleArn)
      + block.withStreamArn(streamArn)
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withStreamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
      {
        stream_arn: converted,
      }
    ),
  },
  sns_destination:: {
    local block = self,
    new(topicArn):: (
      {}
      + block.withTopicArn(topicArn)
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  withCloudwatchDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_destination: value,
    }
  ),
  withKinesisDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_destination: value,
    }
  ),
  withSnsDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_destination: value,
    }
  ),
  withCloudwatchDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_destination+: converted,
    }
  ),
  withKinesisDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_destination+: converted,
    }
  ),
  withSnsDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_destination+: converted,
    }
  ),
}

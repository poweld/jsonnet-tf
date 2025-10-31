{
  local block = self,
  new(terraformName, configurationSetName, eventDestinationName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_configuration_set_event_destination",
          type:: "resource",
          attributes:: ["configuration_set_name", "event_destination_name", "id", "region"],
        },
      },
    }
    + block.withConfigurationSetName(configurationSetName)
    + block.withEventDestinationName(eventDestinationName)
  ),
  withConfigurationSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
  ),
  withEventDestinationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_destination_name" expected to be of type "string"';
    {
      event_destination_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  event_destination:: {
    local block = self,
    new(matchingEventTypes):: (
      {}
      + block.withMatchingEventTypes(matchingEventTypes)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withMatchingEventTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_event_types" expected to be of type "set"';
      {
        matching_event_types: converted,
      }
    ),
    withMatchingEventTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"matching_event_types" expected to be of type "set"';
      {
        matching_event_types+: converted,
      }
    ),
    cloud_watch_destination:: {
      local block = self,
      new():: (
        {}
      ),
      dimension_configuration:: {
        local block = self,
        new(defaultDimensionValue, dimensionName, dimensionValueSource):: (
          {}
          + block.withDefaultDimensionValue(defaultDimensionValue)
          + block.withDimensionName(dimensionName)
          + block.withDimensionValueSource(dimensionValueSource)
        ),
        withDefaultDimensionValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"default_dimension_value" expected to be of type "string"';
          {
            default_dimension_value: converted,
          }
        ),
        withDimensionName(value):: (
          local converted = value;
          assert std.isString(converted) : '"dimension_name" expected to be of type "string"';
          {
            dimension_name: converted,
          }
        ),
        withDimensionValueSource(value):: (
          local converted = value;
          assert std.isString(converted) : '"dimension_value_source" expected to be of type "string"';
          {
            dimension_value_source: converted,
          }
        ),
      },
      withDimensionConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_configuration: value,
        }
      ),
      withDimensionConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_configuration+: converted,
        }
      ),
    },
    event_bridge_destination:: {
      local block = self,
      new(eventBusArn):: (
        {}
        + block.withEventBusArn(eventBusArn)
      ),
      withEventBusArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_bus_arn" expected to be of type "string"';
        {
          event_bus_arn: converted,
        }
      ),
    },
    kinesis_firehose_destination:: {
      local block = self,
      new(deliveryStreamArn, iamRoleArn):: (
        {}
        + block.withDeliveryStreamArn(deliveryStreamArn)
        + block.withIamRoleArn(iamRoleArn)
      ),
      withDeliveryStreamArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream_arn" expected to be of type "string"';
        {
          delivery_stream_arn: converted,
        }
      ),
      withIamRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
        {
          iam_role_arn: converted,
        }
      ),
    },
    pinpoint_destination:: {
      local block = self,
      new(applicationArn):: (
        {}
        + block.withApplicationArn(applicationArn)
      ),
      withApplicationArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"application_arn" expected to be of type "string"';
        {
          application_arn: converted,
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
    withCloudWatchDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloud_watch_destination: value,
      }
    ),
    withEventBridgeDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_bridge_destination: value,
      }
    ),
    withKinesisFirehoseDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_destination: value,
      }
    ),
    withPinpointDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinpoint_destination: value,
      }
    ),
    withSnsDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_destination: value,
      }
    ),
    withCloudWatchDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloud_watch_destination+: converted,
      }
    ),
    withEventBridgeDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_bridge_destination+: converted,
      }
    ),
    withKinesisFirehoseDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose_destination+: converted,
      }
    ),
    withPinpointDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinpoint_destination+: converted,
      }
    ),
    withSnsDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_destination+: converted,
      }
    ),
  },
  withEventDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_destination: value,
    }
  ),
  withEventDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_destination+: converted,
    }
  ),
}

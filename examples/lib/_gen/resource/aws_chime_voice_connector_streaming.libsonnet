{
  local block = self,
  new(terraformName, dataRetention, voiceConnectorId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chime_voice_connector_streaming",
          type:: "resource",
          attributes:: ["data_retention", "disabled", "id", "region", "streaming_notification_targets", "voice_connector_id"],
        },
      },
    }
    + block.withDataRetention(dataRetention)
    + block.withVoiceConnectorId(voiceConnectorId)
  ),
  withDataRetention(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"data_retention" expected to be of type "number"';
    {
      data_retention: converted,
    }
  ),
  withDisabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
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
  withStreamingNotificationTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"streaming_notification_targets" expected to be of type "set"';
    {
      streaming_notification_targets: converted,
    }
  ),
  withStreamingNotificationTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"streaming_notification_targets" expected to be of type "set"';
    {
      streaming_notification_targets+: converted,
    }
  ),
  withVoiceConnectorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
    {
      voice_connector_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  media_insights_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withConfigurationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration_arn" expected to be of type "string"';
      {
        configuration_arn: converted,
      }
    ),
    withDisabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
      {
        disabled: converted,
      }
    ),
  },
  withMediaInsightsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_insights_configuration: value,
    }
  ),
  withMediaInsightsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_insights_configuration+: converted,
    }
  ),
}

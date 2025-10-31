{
  local block = self,
  new(terraformName, voiceConnectorId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chime_voice_connector_logging",
          type:: "resource",
          attributes:: ["enable_media_metric_logs", "enable_sip_logs", "id", "region", "voice_connector_id"],
        },
      },
    }
    + block.withVoiceConnectorId(voiceConnectorId)
  ),
  withEnableMediaMetricLogs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_media_metric_logs" expected to be of type "bool"';
    {
      enable_media_metric_logs: converted,
    }
  ),
  withEnableSipLogs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_sip_logs" expected to be of type "bool"';
    {
      enable_sip_logs: converted,
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
}

{
  local block = self,
  new(terraformName, botId, botVersion, localeId, nLuIntentConfidenceThreshold):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lexv2models_bot_locale",
          type:: "resource",
          attributes:: ["bot_id", "bot_version", "description", "id", "locale_id", "n_lu_intent_confidence_threshold", "name", "region"],
        },
      },
    }
    + block.withBotId(botId)
    + block.withBotVersion(botVersion)
    + block.withLocaleId(localeId)
    + block.withNLuIntentConfidenceThreshold(nLuIntentConfidenceThreshold)
  ),
  withBotId(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_id" expected to be of type "string"';
    {
      bot_id: converted,
    }
  ),
  withBotVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"bot_version" expected to be of type "string"';
    {
      bot_version: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withLocaleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale_id" expected to be of type "string"';
    {
      locale_id: converted,
    }
  ),
  withNLuIntentConfidenceThreshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"n_lu_intent_confidence_threshold" expected to be of type "number"';
    {
      n_lu_intent_confidence_threshold: converted,
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
  voice_settings:: {
    local block = self,
    new(voiceId):: (
      {}
      + block.withVoiceId(voiceId)
    ),
    withEngine(value):: (
      local converted = value;
      assert std.isString(converted) : '"engine" expected to be of type "string"';
      {
        engine: converted,
      }
    ),
    withVoiceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"voice_id" expected to be of type "string"';
      {
        voice_id: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVoiceSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_settings: value,
    }
  ),
  withVoiceSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      voice_settings+: converted,
    }
  ),
}

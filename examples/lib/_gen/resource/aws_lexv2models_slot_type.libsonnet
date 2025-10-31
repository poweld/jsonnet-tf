{
  local block = self,
  new(terraformName, botId, botVersion, localeId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lexv2models_slot_type",
          type:: "resource",
          attributes:: ["bot_id", "bot_version", "description", "id", "locale_id", "name", "parent_slot_type_signature", "region", "slot_type_id"],
        },
      },
    }
    + block.withBotId(botId)
    + block.withBotVersion(botVersion)
    + block.withLocaleId(localeId)
    + block.withName(name)
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withParentSlotTypeSignature(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_slot_type_signature" expected to be of type "string"';
    {
      parent_slot_type_signature: converted,
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
  composite_slot_type_setting:: {
    local block = self,
    new():: (
      {}
    ),
    sub_slots:: {
      local block = self,
      new(name, slotTypeId):: (
        {}
        + block.withName(name)
        + block.withSlotTypeId(slotTypeId)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withSlotTypeId(value):: (
        local converted = value;
        assert std.isString(converted) : '"slot_type_id" expected to be of type "string"';
        {
          slot_type_id: converted,
        }
      ),
    },
    withSubSlots(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sub_slots: value,
      }
    ),
    withSubSlotsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sub_slots+: converted,
      }
    ),
  },
  external_source_setting:: {
    local block = self,
    new():: (
      {}
    ),
    grammar_slot_type_setting:: {
      local block = self,
      new():: (
        {}
      ),
      source:: {
        local block = self,
        new(kmsKeyArn, s3BucketName, s3ObjectKey):: (
          {}
          + block.withKmsKeyArn(kmsKeyArn)
          + block.withS3BucketName(s3BucketName)
          + block.withS3ObjectKey(s3ObjectKey)
        ),
        withKmsKeyArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
          {
            kms_key_arn: converted,
          }
        ),
        withS3BucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        withS3ObjectKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_object_key" expected to be of type "string"';
          {
            s3_object_key: converted,
          }
        ),
      },
      withSource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source: value,
        }
      ),
      withSourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source+: converted,
        }
      ),
    },
    withGrammarSlotTypeSetting(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grammar_slot_type_setting: value,
      }
    ),
    withGrammarSlotTypeSettingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grammar_slot_type_setting+: converted,
      }
    ),
  },
  slot_type_values:: {
    local block = self,
    new():: (
      {}
    ),
    sample_value:: {
      local block = self,
      new(value):: (
        {}
        + block.withValue(value)
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    synonyms:: {
      local block = self,
      new(value):: (
        {}
        + block.withValue(value)
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withSampleValue(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_value: value,
      }
    ),
    withSynonyms(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        synonyms: value,
      }
    ),
    withSampleValueMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_value+: converted,
      }
    ),
    withSynonymsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        synonyms+: converted,
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
  value_selection_setting:: {
    local block = self,
    new(resolutionStrategy):: (
      {}
      + block.withResolutionStrategy(resolutionStrategy)
    ),
    withResolutionStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolution_strategy" expected to be of type "string"';
      {
        resolution_strategy: converted,
      }
    ),
    advanced_recognition_setting:: {
      local block = self,
      new():: (
        {}
      ),
      withAudioRecognitionStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"audio_recognition_strategy" expected to be of type "string"';
        {
          audio_recognition_strategy: converted,
        }
      ),
    },
    regex_filter:: {
      local block = self,
      new(pattern):: (
        {}
        + block.withPattern(pattern)
      ),
      withPattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
        }
      ),
    },
    withAdvancedRecognitionSetting(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_recognition_setting: value,
      }
    ),
    withRegexFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regex_filter: value,
      }
    ),
    withAdvancedRecognitionSettingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_recognition_setting+: converted,
      }
    ),
    withRegexFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regex_filter+: converted,
      }
    ),
  },
  withCompositeSlotTypeSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      composite_slot_type_setting: value,
    }
  ),
  withExternalSourceSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_source_setting: value,
    }
  ),
  withSlotTypeValues(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_type_values: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withValueSelectionSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_selection_setting: value,
    }
  ),
  withCompositeSlotTypeSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      composite_slot_type_setting+: converted,
    }
  ),
  withExternalSourceSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_source_setting+: converted,
    }
  ),
  withSlotTypeValuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_type_values+: converted,
    }
  ),
  withValueSelectionSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_selection_setting+: converted,
    }
  ),
}

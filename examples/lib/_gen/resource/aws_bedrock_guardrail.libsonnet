{
  local block = self,
  new(terraformName, blockedInputMessaging, blockedOutputsMessaging, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_guardrail",
          type:: "resource",
          attributes:: ["blocked_input_messaging", "blocked_outputs_messaging", "created_at", "description", "guardrail_arn", "guardrail_id", "kms_key_arn", "name", "region", "status", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withBlockedInputMessaging(blockedInputMessaging)
    + block.withBlockedOutputsMessaging(blockedOutputsMessaging)
    + block.withName(name)
  ),
  withBlockedInputMessaging(value):: (
    local converted = value;
    assert std.isString(converted) : '"blocked_input_messaging" expected to be of type "string"';
    {
      blocked_input_messaging: converted,
    }
  ),
  withBlockedOutputsMessaging(value):: (
    local converted = value;
    assert std.isString(converted) : '"blocked_outputs_messaging" expected to be of type "string"';
    {
      blocked_outputs_messaging: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  content_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    withTierConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tier_config" expected to be of type "list"';
      {
        tier_config: converted,
      }
    ),
    withTierConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tier_config" expected to be of type "list"';
      {
        tier_config+: converted,
      }
    ),
    filters_config:: {
      local block = self,
      new(inputStrength, outputStrength, type):: (
        {}
        + block.withInputStrength(inputStrength)
        + block.withOutputStrength(outputStrength)
        + block.withType(type)
      ),
      withInputStrength(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_strength" expected to be of type "string"';
        {
          input_strength: converted,
        }
      ),
      withOutputStrength(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_strength" expected to be of type "string"';
        {
          output_strength: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withFiltersConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config: value,
      }
    ),
    withFiltersConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config+: converted,
      }
    ),
  },
  contextual_grounding_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    filters_config:: {
      local block = self,
      new(threshold, type):: (
        {}
        + block.withThreshold(threshold)
        + block.withType(type)
      ),
      withThreshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
        {
          threshold: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withFiltersConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config: value,
      }
    ),
    withFiltersConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filters_config+: converted,
      }
    ),
  },
  cross_region_config:: {
    local block = self,
    new(guardrailProfileIdentifier):: (
      {}
      + block.withGuardrailProfileIdentifier(guardrailProfileIdentifier)
    ),
    withGuardrailProfileIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"guardrail_profile_identifier" expected to be of type "string"';
      {
        guardrail_profile_identifier: converted,
      }
    ),
  },
  sensitive_information_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    pii_entities_config:: {
      local block = self,
      new(action, type):: (
        {}
        + block.withAction(action)
        + block.withType(type)
      ),
      withAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      withInputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_action" expected to be of type "string"';
        {
          input_action: converted,
        }
      ),
      withInputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"input_enabled" expected to be of type "bool"';
        {
          input_enabled: converted,
        }
      ),
      withOutputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_action" expected to be of type "string"';
        {
          output_action: converted,
        }
      ),
      withOutputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"output_enabled" expected to be of type "bool"';
        {
          output_enabled: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    regexes_config:: {
      local block = self,
      new(action, name, pattern):: (
        {}
        + block.withAction(action)
        + block.withName(name)
        + block.withPattern(pattern)
      ),
      withAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      withDescription(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      withInputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_action" expected to be of type "string"';
        {
          input_action: converted,
        }
      ),
      withInputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"input_enabled" expected to be of type "bool"';
        {
          input_enabled: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withOutputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_action" expected to be of type "string"';
        {
          output_action: converted,
        }
      ),
      withOutputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"output_enabled" expected to be of type "bool"';
        {
          output_enabled: converted,
        }
      ),
      withPattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
        }
      ),
    },
    withPiiEntitiesConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pii_entities_config: value,
      }
    ),
    withRegexesConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regexes_config: value,
      }
    ),
    withPiiEntitiesConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pii_entities_config+: converted,
      }
    ),
    withRegexesConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        regexes_config+: converted,
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
  topic_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    withTierConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tier_config" expected to be of type "list"';
      {
        tier_config: converted,
      }
    ),
    withTierConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tier_config" expected to be of type "list"';
      {
        tier_config+: converted,
      }
    ),
    topics_config:: {
      local block = self,
      new(definition, name, type):: (
        {}
        + block.withDefinition(definition)
        + block.withName(name)
        + block.withType(type)
      ),
      withDefinition(value):: (
        local converted = value;
        assert std.isString(converted) : '"definition" expected to be of type "string"';
        {
          definition: converted,
        }
      ),
      withExamples(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"examples" expected to be of type "list"';
        {
          examples: converted,
        }
      ),
      withExamplesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"examples" expected to be of type "list"';
        {
          examples+: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withTopicsConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topics_config: value,
      }
    ),
    withTopicsConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        topics_config+: converted,
      }
    ),
  },
  word_policy_config:: {
    local block = self,
    new():: (
      {}
    ),
    managed_word_lists_config:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withInputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_action" expected to be of type "string"';
        {
          input_action: converted,
        }
      ),
      withInputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"input_enabled" expected to be of type "bool"';
        {
          input_enabled: converted,
        }
      ),
      withOutputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_action" expected to be of type "string"';
        {
          output_action: converted,
        }
      ),
      withOutputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"output_enabled" expected to be of type "bool"';
        {
          output_enabled: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    words_config:: {
      local block = self,
      new(text):: (
        {}
        + block.withText(text)
      ),
      withInputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_action" expected to be of type "string"';
        {
          input_action: converted,
        }
      ),
      withInputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"input_enabled" expected to be of type "bool"';
        {
          input_enabled: converted,
        }
      ),
      withOutputAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_action" expected to be of type "string"';
        {
          output_action: converted,
        }
      ),
      withOutputEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"output_enabled" expected to be of type "bool"';
        {
          output_enabled: converted,
        }
      ),
      withText(value):: (
        local converted = value;
        assert std.isString(converted) : '"text" expected to be of type "string"';
        {
          text: converted,
        }
      ),
    },
    withManagedWordListsConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_word_lists_config: value,
      }
    ),
    withWordsConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        words_config: value,
      }
    ),
    withManagedWordListsConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_word_lists_config+: converted,
      }
    ),
    withWordsConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        words_config+: converted,
      }
    ),
  },
  withContentPolicyConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_policy_config: value,
    }
  ),
  withContextualGroundingPolicyConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      contextual_grounding_policy_config: value,
    }
  ),
  withCrossRegionConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cross_region_config: value,
    }
  ),
  withSensitiveInformationPolicyConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sensitive_information_policy_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTopicPolicyConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic_policy_config: value,
    }
  ),
  withWordPolicyConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      word_policy_config: value,
    }
  ),
  withContentPolicyConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_policy_config+: converted,
    }
  ),
  withContextualGroundingPolicyConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      contextual_grounding_policy_config+: converted,
    }
  ),
  withCrossRegionConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cross_region_config+: converted,
    }
  ),
  withSensitiveInformationPolicyConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sensitive_information_policy_config+: converted,
    }
  ),
  withTopicPolicyConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic_policy_config+: converted,
    }
  ),
  withWordPolicyConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      word_policy_config+: converted,
    }
  ),
}

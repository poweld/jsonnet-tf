{
  local block = self,
  new(terraformName, childDirected, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lex_bot",
          type:: "resource",
          attributes:: ["arn", "checksum", "child_directed", "create_version", "created_date", "description", "detect_sentiment", "enable_model_improvements", "failure_reason", "id", "idle_session_ttl_in_seconds", "last_updated_date", "locale", "name", "nlu_intent_confidence_threshold", "process_behavior", "region", "status", "version", "voice_id"],
        },
      },
    }
    + block.withChildDirected(childDirected)
    + block.withName(name)
  ),
  withChildDirected(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"child_directed" expected to be of type "bool"';
    {
      child_directed: converted,
    }
  ),
  withCreateVersion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_version" expected to be of type "bool"';
    {
      create_version: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDetectSentiment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"detect_sentiment" expected to be of type "bool"';
    {
      detect_sentiment: converted,
    }
  ),
  withEnableModelImprovements(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_model_improvements" expected to be of type "bool"';
    {
      enable_model_improvements: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdleSessionTtlInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_session_ttl_in_seconds" expected to be of type "number"';
    {
      idle_session_ttl_in_seconds: converted,
    }
  ),
  withLocale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNluIntentConfidenceThreshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"nlu_intent_confidence_threshold" expected to be of type "number"';
    {
      nlu_intent_confidence_threshold: converted,
    }
  ),
  withProcessBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"process_behavior" expected to be of type "string"';
    {
      process_behavior: converted,
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
  withVoiceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_id" expected to be of type "string"';
    {
      voice_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  abort_statement:: {
    local block = self,
    new():: (
      {}
    ),
    withResponseCard(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_card" expected to be of type "string"';
      {
        response_card: converted,
      }
    ),
    message:: {
      local block = self,
      new(content, contentType):: (
        {}
        + block.withContent(content)
        + block.withContentType(contentType)
      ),
      withContent(value):: (
        local converted = value;
        assert std.isString(converted) : '"content" expected to be of type "string"';
        {
          content: converted,
        }
      ),
      withContentType(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_type" expected to be of type "string"';
        {
          content_type: converted,
        }
      ),
      withGroupNumber(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"group_number" expected to be of type "number"';
        {
          group_number: converted,
        }
      ),
    },
    withMessage(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message: value,
      }
    ),
    withMessageMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message+: converted,
      }
    ),
  },
  clarification_prompt:: {
    local block = self,
    new(maxAttempts):: (
      {}
      + block.withMaxAttempts(maxAttempts)
    ),
    withMaxAttempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_attempts" expected to be of type "number"';
      {
        max_attempts: converted,
      }
    ),
    withResponseCard(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_card" expected to be of type "string"';
      {
        response_card: converted,
      }
    ),
    message:: {
      local block = self,
      new(content, contentType):: (
        {}
        + block.withContent(content)
        + block.withContentType(contentType)
      ),
      withContent(value):: (
        local converted = value;
        assert std.isString(converted) : '"content" expected to be of type "string"';
        {
          content: converted,
        }
      ),
      withContentType(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_type" expected to be of type "string"';
        {
          content_type: converted,
        }
      ),
      withGroupNumber(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"group_number" expected to be of type "number"';
        {
          group_number: converted,
        }
      ),
    },
    withMessage(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message: value,
      }
    ),
    withMessageMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        message+: converted,
      }
    ),
  },
  intent:: {
    local block = self,
    new(intentName, intentVersion):: (
      {}
      + block.withIntentName(intentName)
      + block.withIntentVersion(intentVersion)
    ),
    withIntentName(value):: (
      local converted = value;
      assert std.isString(converted) : '"intent_name" expected to be of type "string"';
      {
        intent_name: converted,
      }
    ),
    withIntentVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"intent_version" expected to be of type "string"';
      {
        intent_version: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAbortStatement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      abort_statement: value,
    }
  ),
  withClarificationPrompt(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      clarification_prompt: value,
    }
  ),
  withIntent(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      intent: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAbortStatementMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      abort_statement+: converted,
    }
  ),
  withClarificationPromptMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      clarification_prompt+: converted,
    }
  ),
  withIntentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      intent+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lex_intent",
          type:: "resource",
          attributes:: ["arn", "checksum", "create_version", "created_date", "description", "id", "last_updated_date", "name", "parent_intent_signature", "region", "sample_utterances", "version"],
        },
      },
    }
    + block.withName(name)
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withParentIntentSignature(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_intent_signature" expected to be of type "string"';
    {
      parent_intent_signature: converted,
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
  withSampleUtterances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sample_utterances" expected to be of type "set"';
    {
      sample_utterances: converted,
    }
  ),
  withSampleUtterancesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sample_utterances" expected to be of type "set"';
    {
      sample_utterances+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  conclusion_statement:: {
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
  confirmation_prompt:: {
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
  dialog_code_hook:: {
    local block = self,
    new(messageVersion, uri):: (
      {}
      + block.withMessageVersion(messageVersion)
      + block.withUri(uri)
    ),
    withMessageVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_version" expected to be of type "string"';
      {
        message_version: converted,
      }
    ),
    withUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  follow_up_prompt:: {
    local block = self,
    new():: (
      {}
    ),
    prompt:: {
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
    rejection_statement:: {
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
    withPrompt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt: value,
      }
    ),
    withRejectionStatement(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rejection_statement: value,
      }
    ),
    withPromptMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt+: converted,
      }
    ),
    withRejectionStatementMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rejection_statement+: converted,
      }
    ),
  },
  fulfillment_activity:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    code_hook:: {
      local block = self,
      new(messageVersion, uri):: (
        {}
        + block.withMessageVersion(messageVersion)
        + block.withUri(uri)
      ),
      withMessageVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_version" expected to be of type "string"';
        {
          message_version: converted,
        }
      ),
      withUri(value):: (
        local converted = value;
        assert std.isString(converted) : '"uri" expected to be of type "string"';
        {
          uri: converted,
        }
      ),
    },
    withCodeHook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook: value,
      }
    ),
    withCodeHookMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook+: converted,
      }
    ),
  },
  rejection_statement:: {
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
  slot:: {
    local block = self,
    new(name, slotConstraint, slotType):: (
      {}
      + block.withName(name)
      + block.withSlotConstraint(slotConstraint)
      + block.withSlotType(slotType)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    withResponseCard(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_card" expected to be of type "string"';
      {
        response_card: converted,
      }
    ),
    withSampleUtterances(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"sample_utterances" expected to be of type "list"';
      {
        sample_utterances: converted,
      }
    ),
    withSampleUtterancesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"sample_utterances" expected to be of type "list"';
      {
        sample_utterances+: converted,
      }
    ),
    withSlotConstraint(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_constraint" expected to be of type "string"';
      {
        slot_constraint: converted,
      }
    ),
    withSlotType(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_type" expected to be of type "string"';
      {
        slot_type: converted,
      }
    ),
    withSlotTypeVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_type_version" expected to be of type "string"';
      {
        slot_type_version: converted,
      }
    ),
    value_elicitation_prompt:: {
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
    withValueElicitationPrompt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value_elicitation_prompt: value,
      }
    ),
    withValueElicitationPromptMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value_elicitation_prompt+: converted,
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
  withConclusionStatement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conclusion_statement: value,
    }
  ),
  withConfirmationPrompt(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_prompt: value,
    }
  ),
  withDialogCodeHook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook: value,
    }
  ),
  withFollowUpPrompt(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      follow_up_prompt: value,
    }
  ),
  withFulfillmentActivity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_activity: value,
    }
  ),
  withRejectionStatement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rejection_statement: value,
    }
  ),
  withSlot(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConclusionStatementMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      conclusion_statement+: converted,
    }
  ),
  withConfirmationPromptMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_prompt+: converted,
    }
  ),
  withDialogCodeHookMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook+: converted,
    }
  ),
  withFollowUpPromptMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      follow_up_prompt+: converted,
    }
  ),
  withFulfillmentActivityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_activity+: converted,
    }
  ),
  withRejectionStatementMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rejection_statement+: converted,
    }
  ),
  withSlotMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot+: converted,
    }
  ),
}

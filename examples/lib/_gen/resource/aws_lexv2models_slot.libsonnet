{
  local block = self,
  new(terraformName, botId, botVersion, intentId, localeId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lexv2models_slot",
          type:: "resource",
          attributes:: ["bot_id", "bot_version", "description", "id", "intent_id", "locale_id", "name", "region", "slot_id", "slot_type_id"],
        },
      },
    }
    + block.withBotId(botId)
    + block.withBotVersion(botVersion)
    + block.withIntentId(intentId)
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
  withIntentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"intent_id" expected to be of type "string"';
    {
      intent_id: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSlotTypeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"slot_type_id" expected to be of type "string"';
    {
      slot_type_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  multiple_values_setting:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowMultipleValues(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_multiple_values" expected to be of type "bool"';
      {
        allow_multiple_values: converted,
      }
    ),
  },
  obfuscation_setting:: {
    local block = self,
    new(obfuscationSettingType):: (
      {}
      + block.withObfuscationSettingType(obfuscationSettingType)
    ),
    withObfuscationSettingType(value):: (
      local converted = value;
      assert std.isString(converted) : '"obfuscation_setting_type" expected to be of type "string"';
      {
        obfuscation_setting_type: converted,
      }
    ),
  },
  sub_slot_setting:: {
    local block = self,
    new():: (
      {}
    ),
    withExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    slot_specification:: {
      local block = self,
      new(mapBlockKey, slotTypeId):: (
        {}
        + block.withMapBlockKey(mapBlockKey)
        + block.withSlotTypeId(slotTypeId)
      ),
      withMapBlockKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
        {
          map_block_key: converted,
        }
      ),
      withSlotTypeId(value):: (
        local converted = value;
        assert std.isString(converted) : '"slot_type_id" expected to be of type "string"';
        {
          slot_type_id: converted,
        }
      ),
      value_elicitation_setting:: {
        local block = self,
        new():: (
          {}
        ),
        default_value_specification:: {
          local block = self,
          new():: (
            {}
          ),
          default_value_list:: {
            local block = self,
            new(defaultValue):: (
              {}
              + block.withDefaultValue(defaultValue)
            ),
            withDefaultValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_value" expected to be of type "string"';
              {
                default_value: converted,
              }
            ),
          },
          withDefaultValueList(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_value_list: value,
            }
          ),
          withDefaultValueListMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_value_list+: converted,
            }
          ),
        },
        prompt_specification:: {
          local block = self,
          new(maxRetries):: (
            {}
            + block.withMaxRetries(maxRetries)
          ),
          withAllowInterrupt(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
            {
              allow_interrupt: converted,
            }
          ),
          withMaxRetries(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
            {
              max_retries: converted,
            }
          ),
          withMessageSelectionStrategy(value):: (
            local converted = value;
            assert std.isString(converted) : '"message_selection_strategy" expected to be of type "string"';
            {
              message_selection_strategy: converted,
            }
          ),
          message_group:: {
            local block = self,
            new():: (
              {}
            ),
            message:: {
              local block = self,
              new():: (
                {}
              ),
              custom_payload:: {
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
              image_response_card:: {
                local block = self,
                new(title):: (
                  {}
                  + block.withTitle(title)
                ),
                withImageUrl(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"image_url" expected to be of type "string"';
                  {
                    image_url: converted,
                  }
                ),
                withSubtitle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                  {
                    subtitle: converted,
                  }
                ),
                withTitle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"title" expected to be of type "string"';
                  {
                    title: converted,
                  }
                ),
                button:: {
                  local block = self,
                  new(text, value):: (
                    {}
                    + block.withText(text)
                    + block.withValue(value)
                  ),
                  withText(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"text" expected to be of type "string"';
                    {
                      text: converted,
                    }
                  ),
                  withValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"value" expected to be of type "string"';
                    {
                      value: converted,
                    }
                  ),
                },
                withButton(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button: value,
                  }
                ),
                withButtonMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button+: converted,
                  }
                ),
              },
              plain_text_message:: {
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
              ssml_message:: {
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
              withCustomPayload(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload: value,
                }
              ),
              withImageResponseCard(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card: value,
                }
              ),
              withPlainTextMessage(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message: value,
                }
              ),
              withSsmlMessage(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message: value,
                }
              ),
              withCustomPayloadMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload+: converted,
                }
              ),
              withImageResponseCardMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card+: converted,
                }
              ),
              withPlainTextMessageMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message+: converted,
                }
              ),
              withSsmlMessageMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message+: converted,
                }
              ),
            },
            variation:: {
              local block = self,
              new():: (
                {}
              ),
              custom_payload:: {
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
              image_response_card:: {
                local block = self,
                new(title):: (
                  {}
                  + block.withTitle(title)
                ),
                withImageUrl(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"image_url" expected to be of type "string"';
                  {
                    image_url: converted,
                  }
                ),
                withSubtitle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                  {
                    subtitle: converted,
                  }
                ),
                withTitle(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"title" expected to be of type "string"';
                  {
                    title: converted,
                  }
                ),
                button:: {
                  local block = self,
                  new(text, value):: (
                    {}
                    + block.withText(text)
                    + block.withValue(value)
                  ),
                  withText(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"text" expected to be of type "string"';
                    {
                      text: converted,
                    }
                  ),
                  withValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"value" expected to be of type "string"';
                    {
                      value: converted,
                    }
                  ),
                },
                withButton(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button: value,
                  }
                ),
                withButtonMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    button+: converted,
                  }
                ),
              },
              plain_text_message:: {
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
              ssml_message:: {
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
              withCustomPayload(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload: value,
                }
              ),
              withImageResponseCard(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card: value,
                }
              ),
              withPlainTextMessage(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message: value,
                }
              ),
              withSsmlMessage(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message: value,
                }
              ),
              withCustomPayloadMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  custom_payload+: converted,
                }
              ),
              withImageResponseCardMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  image_response_card+: converted,
                }
              ),
              withPlainTextMessageMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  plain_text_message+: converted,
                }
              ),
              withSsmlMessageMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  ssml_message+: converted,
                }
              ),
            },
            withMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message: value,
              }
            ),
            withVariation(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                variation: value,
              }
            ),
            withMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message+: converted,
              }
            ),
            withVariationMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                variation+: converted,
              }
            ),
          },
          prompt_attempts_specification:: {
            local block = self,
            new(mapBlockKey):: (
              {}
              + block.withMapBlockKey(mapBlockKey)
            ),
            withAllowInterrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            withMapBlockKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            allowed_input_types:: {
              local block = self,
              new(allowAudioInput, allowDtmfInput):: (
                {}
                + block.withAllowAudioInput(allowAudioInput)
                + block.withAllowDtmfInput(allowDtmfInput)
              ),
              withAllowAudioInput(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"allow_audio_input" expected to be of type "bool"';
                {
                  allow_audio_input: converted,
                }
              ),
              withAllowDtmfInput(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"allow_dtmf_input" expected to be of type "bool"';
                {
                  allow_dtmf_input: converted,
                }
              ),
            },
            audio_and_dtmf_input_specification:: {
              local block = self,
              new(startTimeoutMs):: (
                {}
                + block.withStartTimeoutMs(startTimeoutMs)
              ),
              withStartTimeoutMs(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
                {
                  start_timeout_ms: converted,
                }
              ),
              audio_specification:: {
                local block = self,
                new(endTimeoutMs, maxLengthMs):: (
                  {}
                  + block.withEndTimeoutMs(endTimeoutMs)
                  + block.withMaxLengthMs(maxLengthMs)
                ),
                withEndTimeoutMs(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
                  {
                    end_timeout_ms: converted,
                  }
                ),
                withMaxLengthMs(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"max_length_ms" expected to be of type "number"';
                  {
                    max_length_ms: converted,
                  }
                ),
              },
              dtmf_specification:: {
                local block = self,
                new(deletionCharacter, endCharacter, endTimeoutMs, maxLength):: (
                  {}
                  + block.withDeletionCharacter(deletionCharacter)
                  + block.withEndCharacter(endCharacter)
                  + block.withEndTimeoutMs(endTimeoutMs)
                  + block.withMaxLength(maxLength)
                ),
                withDeletionCharacter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"deletion_character" expected to be of type "string"';
                  {
                    deletion_character: converted,
                  }
                ),
                withEndCharacter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"end_character" expected to be of type "string"';
                  {
                    end_character: converted,
                  }
                ),
                withEndTimeoutMs(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
                  {
                    end_timeout_ms: converted,
                  }
                ),
                withMaxLength(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"max_length" expected to be of type "number"';
                  {
                    max_length: converted,
                  }
                ),
              },
              withAudioSpecification(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_specification: value,
                }
              ),
              withDtmfSpecification(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dtmf_specification: value,
                }
              ),
              withAudioSpecificationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  audio_specification+: converted,
                }
              ),
              withDtmfSpecificationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dtmf_specification+: converted,
                }
              ),
            },
            text_input_specification:: {
              local block = self,
              new(startTimeoutMs):: (
                {}
                + block.withStartTimeoutMs(startTimeoutMs)
              ),
              withStartTimeoutMs(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
                {
                  start_timeout_ms: converted,
                }
              ),
            },
            withAllowedInputTypes(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                allowed_input_types: value,
              }
            ),
            withAudioAndDtmfInputSpecification(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                audio_and_dtmf_input_specification: value,
              }
            ),
            withTextInputSpecification(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                text_input_specification: value,
              }
            ),
            withAllowedInputTypesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                allowed_input_types+: converted,
              }
            ),
            withAudioAndDtmfInputSpecificationMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                audio_and_dtmf_input_specification+: converted,
              }
            ),
            withTextInputSpecificationMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                text_input_specification+: converted,
              }
            ),
          },
          withMessageGroup(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message_group: value,
            }
          ),
          withPromptAttemptsSpecification(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prompt_attempts_specification: value,
            }
          ),
          withMessageGroupMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message_group+: converted,
            }
          ),
          withPromptAttemptsSpecificationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prompt_attempts_specification+: converted,
            }
          ),
        },
        sample_utterance:: {
          local block = self,
          new(utterance):: (
            {}
            + block.withUtterance(utterance)
          ),
          withUtterance(value):: (
            local converted = value;
            assert std.isString(converted) : '"utterance" expected to be of type "string"';
            {
              utterance: converted,
            }
          ),
        },
        wait_and_continue_specification:: {
          local block = self,
          new():: (
            {}
          ),
          withActive(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          continue_response:: {
            local block = self,
            new():: (
              {}
            ),
            withAllowInterrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            message_group:: {
              local block = self,
              new():: (
                {}
              ),
              message:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.withTitle(title)
                  ),
                  withImageUrl(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  withSubtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  withTitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.withText(text)
                      + block.withValue(value)
                    ),
                    withText(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
                      }
                    ),
                    withValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"value" expected to be of type "string"';
                      {
                        value: converted,
                      }
                    ),
                  },
                  withButton(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  withButtonMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                withCustomPayload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                withImageResponseCard(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                withPlainTextMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                withSsmlMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                withCustomPayloadMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                withImageResponseCardMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                withPlainTextMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                withSsmlMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              variation:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.withTitle(title)
                  ),
                  withImageUrl(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  withSubtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  withTitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.withText(text)
                      + block.withValue(value)
                    ),
                    withText(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
                      }
                    ),
                    withValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"value" expected to be of type "string"';
                      {
                        value: converted,
                      }
                    ),
                  },
                  withButton(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  withButtonMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                withCustomPayload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                withImageResponseCard(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                withPlainTextMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                withSsmlMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                withCustomPayloadMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                withImageResponseCardMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                withPlainTextMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                withSsmlMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              withMessage(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message: value,
                }
              ),
              withVariation(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation: value,
                }
              ),
              withMessageMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message+: converted,
                }
              ),
              withVariationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation+: converted,
                }
              ),
            },
            withMessageGroup(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group: value,
              }
            ),
            withMessageGroupMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group+: converted,
              }
            ),
          },
          still_waiting_response:: {
            local block = self,
            new(frequencyInSeconds, timeoutInSeconds):: (
              {}
              + block.withFrequencyInSeconds(frequencyInSeconds)
              + block.withTimeoutInSeconds(timeoutInSeconds)
            ),
            withAllowInterrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            withFrequencyInSeconds(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"frequency_in_seconds" expected to be of type "number"';
              {
                frequency_in_seconds: converted,
              }
            ),
            withTimeoutInSeconds(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
              {
                timeout_in_seconds: converted,
              }
            ),
            message_group:: {
              local block = self,
              new():: (
                {}
              ),
              message:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.withTitle(title)
                  ),
                  withImageUrl(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  withSubtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  withTitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.withText(text)
                      + block.withValue(value)
                    ),
                    withText(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
                      }
                    ),
                    withValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"value" expected to be of type "string"';
                      {
                        value: converted,
                      }
                    ),
                  },
                  withButton(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  withButtonMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                withCustomPayload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                withImageResponseCard(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                withPlainTextMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                withSsmlMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                withCustomPayloadMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                withImageResponseCardMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                withPlainTextMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                withSsmlMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              variation:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.withTitle(title)
                  ),
                  withImageUrl(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  withSubtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  withTitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.withText(text)
                      + block.withValue(value)
                    ),
                    withText(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
                      }
                    ),
                    withValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"value" expected to be of type "string"';
                      {
                        value: converted,
                      }
                    ),
                  },
                  withButton(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  withButtonMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                withCustomPayload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                withImageResponseCard(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                withPlainTextMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                withSsmlMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                withCustomPayloadMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                withImageResponseCardMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                withPlainTextMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                withSsmlMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              withMessage(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message: value,
                }
              ),
              withVariation(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation: value,
                }
              ),
              withMessageMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message+: converted,
                }
              ),
              withVariationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation+: converted,
                }
              ),
            },
            withMessageGroup(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group: value,
              }
            ),
            withMessageGroupMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group+: converted,
              }
            ),
          },
          waiting_response:: {
            local block = self,
            new():: (
              {}
            ),
            withAllowInterrupt(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
              {
                allow_interrupt: converted,
              }
            ),
            message_group:: {
              local block = self,
              new():: (
                {}
              ),
              message:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.withTitle(title)
                  ),
                  withImageUrl(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  withSubtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  withTitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.withText(text)
                      + block.withValue(value)
                    ),
                    withText(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
                      }
                    ),
                    withValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"value" expected to be of type "string"';
                      {
                        value: converted,
                      }
                    ),
                  },
                  withButton(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  withButtonMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                withCustomPayload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                withImageResponseCard(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                withPlainTextMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                withSsmlMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                withCustomPayloadMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                withImageResponseCardMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                withPlainTextMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                withSsmlMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              variation:: {
                local block = self,
                new():: (
                  {}
                ),
                custom_payload:: {
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
                image_response_card:: {
                  local block = self,
                  new(title):: (
                    {}
                    + block.withTitle(title)
                  ),
                  withImageUrl(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"image_url" expected to be of type "string"';
                    {
                      image_url: converted,
                    }
                  ),
                  withSubtitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                    {
                      subtitle: converted,
                    }
                  ),
                  withTitle(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"title" expected to be of type "string"';
                    {
                      title: converted,
                    }
                  ),
                  button:: {
                    local block = self,
                    new(text, value):: (
                      {}
                      + block.withText(text)
                      + block.withValue(value)
                    ),
                    withText(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"text" expected to be of type "string"';
                      {
                        text: converted,
                      }
                    ),
                    withValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"value" expected to be of type "string"';
                      {
                        value: converted,
                      }
                    ),
                  },
                  withButton(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button: value,
                    }
                  ),
                  withButtonMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      button+: converted,
                    }
                  ),
                },
                plain_text_message:: {
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
                ssml_message:: {
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
                withCustomPayload(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload: value,
                  }
                ),
                withImageResponseCard(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card: value,
                  }
                ),
                withPlainTextMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message: value,
                  }
                ),
                withSsmlMessage(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message: value,
                  }
                ),
                withCustomPayloadMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    custom_payload+: converted,
                  }
                ),
                withImageResponseCardMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    image_response_card+: converted,
                  }
                ),
                withPlainTextMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    plain_text_message+: converted,
                  }
                ),
                withSsmlMessageMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    ssml_message+: converted,
                  }
                ),
              },
              withMessage(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message: value,
                }
              ),
              withVariation(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation: value,
                }
              ),
              withMessageMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  message+: converted,
                }
              ),
              withVariationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  variation+: converted,
                }
              ),
            },
            withMessageGroup(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group: value,
              }
            ),
            withMessageGroupMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                message_group+: converted,
              }
            ),
          },
          withContinueResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              continue_response: value,
            }
          ),
          withStillWaitingResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              still_waiting_response: value,
            }
          ),
          withWaitingResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              waiting_response: value,
            }
          ),
          withContinueResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              continue_response+: converted,
            }
          ),
          withStillWaitingResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              still_waiting_response+: converted,
            }
          ),
          withWaitingResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              waiting_response+: converted,
            }
          ),
        },
        withDefaultValueSpecification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_value_specification: value,
          }
        ),
        withPromptSpecification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prompt_specification: value,
          }
        ),
        withSampleUtterance(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sample_utterance: value,
          }
        ),
        withWaitAndContinueSpecification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wait_and_continue_specification: value,
          }
        ),
        withDefaultValueSpecificationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_value_specification+: converted,
          }
        ),
        withPromptSpecificationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prompt_specification+: converted,
          }
        ),
        withSampleUtteranceMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sample_utterance+: converted,
          }
        ),
        withWaitAndContinueSpecificationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            wait_and_continue_specification+: converted,
          }
        ),
      },
      withValueElicitationSetting(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          value_elicitation_setting: value,
        }
      ),
      withValueElicitationSettingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          value_elicitation_setting+: converted,
        }
      ),
    },
    withSlotSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_specification: value,
      }
    ),
    withSlotSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_specification+: converted,
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
  value_elicitation_setting:: {
    local block = self,
    new(slotConstraint):: (
      {}
      + block.withSlotConstraint(slotConstraint)
    ),
    withSlotConstraint(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_constraint" expected to be of type "string"';
      {
        slot_constraint: converted,
      }
    ),
    default_value_specification:: {
      local block = self,
      new():: (
        {}
      ),
      default_value_list:: {
        local block = self,
        new(defaultValue):: (
          {}
          + block.withDefaultValue(defaultValue)
        ),
        withDefaultValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"default_value" expected to be of type "string"';
          {
            default_value: converted,
          }
        ),
      },
      withDefaultValueList(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_value_list: value,
        }
      ),
      withDefaultValueListMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_value_list+: converted,
        }
      ),
    },
    prompt_specification:: {
      local block = self,
      new(maxRetries):: (
        {}
        + block.withMaxRetries(maxRetries)
      ),
      withAllowInterrupt(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
        {
          allow_interrupt: converted,
        }
      ),
      withMaxRetries(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
        {
          max_retries: converted,
        }
      ),
      withMessageSelectionStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_selection_strategy" expected to be of type "string"';
        {
          message_selection_strategy: converted,
        }
      ),
      message_group:: {
        local block = self,
        new():: (
          {}
        ),
        message:: {
          local block = self,
          new():: (
            {}
          ),
          custom_payload:: {
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
          image_response_card:: {
            local block = self,
            new(title):: (
              {}
              + block.withTitle(title)
            ),
            withImageUrl(value):: (
              local converted = value;
              assert std.isString(converted) : '"image_url" expected to be of type "string"';
              {
                image_url: converted,
              }
            ),
            withSubtitle(value):: (
              local converted = value;
              assert std.isString(converted) : '"subtitle" expected to be of type "string"';
              {
                subtitle: converted,
              }
            ),
            withTitle(value):: (
              local converted = value;
              assert std.isString(converted) : '"title" expected to be of type "string"';
              {
                title: converted,
              }
            ),
            button:: {
              local block = self,
              new(text, value):: (
                {}
                + block.withText(text)
                + block.withValue(value)
              ),
              withText(value):: (
                local converted = value;
                assert std.isString(converted) : '"text" expected to be of type "string"';
                {
                  text: converted,
                }
              ),
              withValue(value):: (
                local converted = value;
                assert std.isString(converted) : '"value" expected to be of type "string"';
                {
                  value: converted,
                }
              ),
            },
            withButton(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button: value,
              }
            ),
            withButtonMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button+: converted,
              }
            ),
          },
          plain_text_message:: {
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
          ssml_message:: {
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
          withCustomPayload(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload: value,
            }
          ),
          withImageResponseCard(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card: value,
            }
          ),
          withPlainTextMessage(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message: value,
            }
          ),
          withSsmlMessage(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message: value,
            }
          ),
          withCustomPayloadMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload+: converted,
            }
          ),
          withImageResponseCardMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card+: converted,
            }
          ),
          withPlainTextMessageMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message+: converted,
            }
          ),
          withSsmlMessageMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message+: converted,
            }
          ),
        },
        variation:: {
          local block = self,
          new():: (
            {}
          ),
          custom_payload:: {
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
          image_response_card:: {
            local block = self,
            new(title):: (
              {}
              + block.withTitle(title)
            ),
            withImageUrl(value):: (
              local converted = value;
              assert std.isString(converted) : '"image_url" expected to be of type "string"';
              {
                image_url: converted,
              }
            ),
            withSubtitle(value):: (
              local converted = value;
              assert std.isString(converted) : '"subtitle" expected to be of type "string"';
              {
                subtitle: converted,
              }
            ),
            withTitle(value):: (
              local converted = value;
              assert std.isString(converted) : '"title" expected to be of type "string"';
              {
                title: converted,
              }
            ),
            button:: {
              local block = self,
              new(text, value):: (
                {}
                + block.withText(text)
                + block.withValue(value)
              ),
              withText(value):: (
                local converted = value;
                assert std.isString(converted) : '"text" expected to be of type "string"';
                {
                  text: converted,
                }
              ),
              withValue(value):: (
                local converted = value;
                assert std.isString(converted) : '"value" expected to be of type "string"';
                {
                  value: converted,
                }
              ),
            },
            withButton(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button: value,
              }
            ),
            withButtonMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                button+: converted,
              }
            ),
          },
          plain_text_message:: {
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
          ssml_message:: {
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
          withCustomPayload(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload: value,
            }
          ),
          withImageResponseCard(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card: value,
            }
          ),
          withPlainTextMessage(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message: value,
            }
          ),
          withSsmlMessage(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message: value,
            }
          ),
          withCustomPayloadMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_payload+: converted,
            }
          ),
          withImageResponseCardMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              image_response_card+: converted,
            }
          ),
          withPlainTextMessageMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              plain_text_message+: converted,
            }
          ),
          withSsmlMessageMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              ssml_message+: converted,
            }
          ),
        },
        withMessage(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message: value,
          }
        ),
        withVariation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            variation: value,
          }
        ),
        withMessageMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message+: converted,
          }
        ),
        withVariationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            variation+: converted,
          }
        ),
      },
      prompt_attempts_specification:: {
        local block = self,
        new(mapBlockKey):: (
          {}
          + block.withMapBlockKey(mapBlockKey)
        ),
        withAllowInterrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        withMapBlockKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
          {
            map_block_key: converted,
          }
        ),
        allowed_input_types:: {
          local block = self,
          new(allowAudioInput, allowDtmfInput):: (
            {}
            + block.withAllowAudioInput(allowAudioInput)
            + block.withAllowDtmfInput(allowDtmfInput)
          ),
          withAllowAudioInput(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"allow_audio_input" expected to be of type "bool"';
            {
              allow_audio_input: converted,
            }
          ),
          withAllowDtmfInput(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"allow_dtmf_input" expected to be of type "bool"';
            {
              allow_dtmf_input: converted,
            }
          ),
        },
        audio_and_dtmf_input_specification:: {
          local block = self,
          new(startTimeoutMs):: (
            {}
            + block.withStartTimeoutMs(startTimeoutMs)
          ),
          withStartTimeoutMs(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
            {
              start_timeout_ms: converted,
            }
          ),
          audio_specification:: {
            local block = self,
            new(endTimeoutMs, maxLengthMs):: (
              {}
              + block.withEndTimeoutMs(endTimeoutMs)
              + block.withMaxLengthMs(maxLengthMs)
            ),
            withEndTimeoutMs(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
              {
                end_timeout_ms: converted,
              }
            ),
            withMaxLengthMs(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max_length_ms" expected to be of type "number"';
              {
                max_length_ms: converted,
              }
            ),
          },
          dtmf_specification:: {
            local block = self,
            new(deletionCharacter, endCharacter, endTimeoutMs, maxLength):: (
              {}
              + block.withDeletionCharacter(deletionCharacter)
              + block.withEndCharacter(endCharacter)
              + block.withEndTimeoutMs(endTimeoutMs)
              + block.withMaxLength(maxLength)
            ),
            withDeletionCharacter(value):: (
              local converted = value;
              assert std.isString(converted) : '"deletion_character" expected to be of type "string"';
              {
                deletion_character: converted,
              }
            ),
            withEndCharacter(value):: (
              local converted = value;
              assert std.isString(converted) : '"end_character" expected to be of type "string"';
              {
                end_character: converted,
              }
            ),
            withEndTimeoutMs(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"end_timeout_ms" expected to be of type "number"';
              {
                end_timeout_ms: converted,
              }
            ),
            withMaxLength(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max_length" expected to be of type "number"';
              {
                max_length: converted,
              }
            ),
          },
          withAudioSpecification(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_specification: value,
            }
          ),
          withDtmfSpecification(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dtmf_specification: value,
            }
          ),
          withAudioSpecificationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              audio_specification+: converted,
            }
          ),
          withDtmfSpecificationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dtmf_specification+: converted,
            }
          ),
        },
        text_input_specification:: {
          local block = self,
          new(startTimeoutMs):: (
            {}
            + block.withStartTimeoutMs(startTimeoutMs)
          ),
          withStartTimeoutMs(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"start_timeout_ms" expected to be of type "number"';
            {
              start_timeout_ms: converted,
            }
          ),
        },
        withAllowedInputTypes(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allowed_input_types: value,
          }
        ),
        withAudioAndDtmfInputSpecification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            audio_and_dtmf_input_specification: value,
          }
        ),
        withTextInputSpecification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            text_input_specification: value,
          }
        ),
        withAllowedInputTypesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allowed_input_types+: converted,
          }
        ),
        withAudioAndDtmfInputSpecificationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            audio_and_dtmf_input_specification+: converted,
          }
        ),
        withTextInputSpecificationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            text_input_specification+: converted,
          }
        ),
      },
      withMessageGroup(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          message_group: value,
        }
      ),
      withPromptAttemptsSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prompt_attempts_specification: value,
        }
      ),
      withMessageGroupMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          message_group+: converted,
        }
      ),
      withPromptAttemptsSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prompt_attempts_specification+: converted,
        }
      ),
    },
    sample_utterance:: {
      local block = self,
      new(utterance):: (
        {}
        + block.withUtterance(utterance)
      ),
      withUtterance(value):: (
        local converted = value;
        assert std.isString(converted) : '"utterance" expected to be of type "string"';
        {
          utterance: converted,
        }
      ),
    },
    slot_resolution_setting:: {
      local block = self,
      new(slotResolutionStrategy):: (
        {}
        + block.withSlotResolutionStrategy(slotResolutionStrategy)
      ),
      withSlotResolutionStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"slot_resolution_strategy" expected to be of type "string"';
        {
          slot_resolution_strategy: converted,
        }
      ),
    },
    wait_and_continue_specification:: {
      local block = self,
      new():: (
        {}
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      continue_response:: {
        local block = self,
        new():: (
          {}
        ),
        withAllowInterrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        message_group:: {
          local block = self,
          new():: (
            {}
          ),
          message:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.withTitle(title)
              ),
              withImageUrl(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              withSubtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              withTitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.withText(text)
                  + block.withValue(value)
                ),
                withText(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
                  }
                ),
                withValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"value" expected to be of type "string"';
                  {
                    value: converted,
                  }
                ),
              },
              withButton(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              withButtonMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            withCustomPayload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            withImageResponseCard(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            withPlainTextMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            withSsmlMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            withCustomPayloadMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            withImageResponseCardMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            withPlainTextMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            withSsmlMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          variation:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.withTitle(title)
              ),
              withImageUrl(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              withSubtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              withTitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.withText(text)
                  + block.withValue(value)
                ),
                withText(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
                  }
                ),
                withValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"value" expected to be of type "string"';
                  {
                    value: converted,
                  }
                ),
              },
              withButton(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              withButtonMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            withCustomPayload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            withImageResponseCard(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            withPlainTextMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            withSsmlMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            withCustomPayloadMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            withImageResponseCardMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            withPlainTextMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            withSsmlMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          withMessage(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message: value,
            }
          ),
          withVariation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation: value,
            }
          ),
          withMessageMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message+: converted,
            }
          ),
          withVariationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation+: converted,
            }
          ),
        },
        withMessageGroup(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group: value,
          }
        ),
        withMessageGroupMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group+: converted,
          }
        ),
      },
      still_waiting_response:: {
        local block = self,
        new(frequencyInSeconds, timeoutInSeconds):: (
          {}
          + block.withFrequencyInSeconds(frequencyInSeconds)
          + block.withTimeoutInSeconds(timeoutInSeconds)
        ),
        withAllowInterrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        withFrequencyInSeconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"frequency_in_seconds" expected to be of type "number"';
          {
            frequency_in_seconds: converted,
          }
        ),
        withTimeoutInSeconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
          {
            timeout_in_seconds: converted,
          }
        ),
        message_group:: {
          local block = self,
          new():: (
            {}
          ),
          message:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.withTitle(title)
              ),
              withImageUrl(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              withSubtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              withTitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.withText(text)
                  + block.withValue(value)
                ),
                withText(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
                  }
                ),
                withValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"value" expected to be of type "string"';
                  {
                    value: converted,
                  }
                ),
              },
              withButton(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              withButtonMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            withCustomPayload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            withImageResponseCard(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            withPlainTextMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            withSsmlMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            withCustomPayloadMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            withImageResponseCardMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            withPlainTextMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            withSsmlMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          variation:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.withTitle(title)
              ),
              withImageUrl(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              withSubtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              withTitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.withText(text)
                  + block.withValue(value)
                ),
                withText(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
                  }
                ),
                withValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"value" expected to be of type "string"';
                  {
                    value: converted,
                  }
                ),
              },
              withButton(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              withButtonMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            withCustomPayload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            withImageResponseCard(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            withPlainTextMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            withSsmlMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            withCustomPayloadMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            withImageResponseCardMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            withPlainTextMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            withSsmlMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          withMessage(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message: value,
            }
          ),
          withVariation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation: value,
            }
          ),
          withMessageMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message+: converted,
            }
          ),
          withVariationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation+: converted,
            }
          ),
        },
        withMessageGroup(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group: value,
          }
        ),
        withMessageGroupMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group+: converted,
          }
        ),
      },
      waiting_response:: {
        local block = self,
        new():: (
          {}
        ),
        withAllowInterrupt(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_interrupt" expected to be of type "bool"';
          {
            allow_interrupt: converted,
          }
        ),
        message_group:: {
          local block = self,
          new():: (
            {}
          ),
          message:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.withTitle(title)
              ),
              withImageUrl(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              withSubtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              withTitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.withText(text)
                  + block.withValue(value)
                ),
                withText(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
                  }
                ),
                withValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"value" expected to be of type "string"';
                  {
                    value: converted,
                  }
                ),
              },
              withButton(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              withButtonMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            withCustomPayload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            withImageResponseCard(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            withPlainTextMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            withSsmlMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            withCustomPayloadMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            withImageResponseCardMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            withPlainTextMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            withSsmlMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          variation:: {
            local block = self,
            new():: (
              {}
            ),
            custom_payload:: {
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
            image_response_card:: {
              local block = self,
              new(title):: (
                {}
                + block.withTitle(title)
              ),
              withImageUrl(value):: (
                local converted = value;
                assert std.isString(converted) : '"image_url" expected to be of type "string"';
                {
                  image_url: converted,
                }
              ),
              withSubtitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"subtitle" expected to be of type "string"';
                {
                  subtitle: converted,
                }
              ),
              withTitle(value):: (
                local converted = value;
                assert std.isString(converted) : '"title" expected to be of type "string"';
                {
                  title: converted,
                }
              ),
              button:: {
                local block = self,
                new(text, value):: (
                  {}
                  + block.withText(text)
                  + block.withValue(value)
                ),
                withText(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"text" expected to be of type "string"';
                  {
                    text: converted,
                  }
                ),
                withValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"value" expected to be of type "string"';
                  {
                    value: converted,
                  }
                ),
              },
              withButton(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button: value,
                }
              ),
              withButtonMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  button+: converted,
                }
              ),
            },
            plain_text_message:: {
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
            ssml_message:: {
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
            withCustomPayload(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload: value,
              }
            ),
            withImageResponseCard(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card: value,
              }
            ),
            withPlainTextMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message: value,
              }
            ),
            withSsmlMessage(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message: value,
              }
            ),
            withCustomPayloadMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                custom_payload+: converted,
              }
            ),
            withImageResponseCardMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                image_response_card+: converted,
              }
            ),
            withPlainTextMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                plain_text_message+: converted,
              }
            ),
            withSsmlMessageMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                ssml_message+: converted,
              }
            ),
          },
          withMessage(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message: value,
            }
          ),
          withVariation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation: value,
            }
          ),
          withMessageMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              message+: converted,
            }
          ),
          withVariationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              variation+: converted,
            }
          ),
        },
        withMessageGroup(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group: value,
          }
        ),
        withMessageGroupMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message_group+: converted,
          }
        ),
      },
      withContinueResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          continue_response: value,
        }
      ),
      withStillWaitingResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          still_waiting_response: value,
        }
      ),
      withWaitingResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          waiting_response: value,
        }
      ),
      withContinueResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          continue_response+: converted,
        }
      ),
      withStillWaitingResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          still_waiting_response+: converted,
        }
      ),
      withWaitingResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          waiting_response+: converted,
        }
      ),
    },
    withDefaultValueSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_value_specification: value,
      }
    ),
    withPromptSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification: value,
      }
    ),
    withSampleUtterance(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_utterance: value,
      }
    ),
    withSlotResolutionSetting(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_resolution_setting: value,
      }
    ),
    withWaitAndContinueSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        wait_and_continue_specification: value,
      }
    ),
    withDefaultValueSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_value_specification+: converted,
      }
    ),
    withPromptSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification+: converted,
      }
    ),
    withSampleUtteranceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sample_utterance+: converted,
      }
    ),
    withSlotResolutionSettingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        slot_resolution_setting+: converted,
      }
    ),
    withWaitAndContinueSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        wait_and_continue_specification+: converted,
      }
    ),
  },
  withMultipleValuesSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiple_values_setting: value,
    }
  ),
  withObfuscationSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      obfuscation_setting: value,
    }
  ),
  withSubSlotSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_slot_setting: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withValueElicitationSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_elicitation_setting: value,
    }
  ),
  withMultipleValuesSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multiple_values_setting+: converted,
    }
  ),
  withObfuscationSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      obfuscation_setting+: converted,
    }
  ),
  withSubSlotSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_slot_setting+: converted,
    }
  ),
  withValueElicitationSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      value_elicitation_setting+: converted,
    }
  ),
}

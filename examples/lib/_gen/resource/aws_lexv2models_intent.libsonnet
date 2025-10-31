{
  local block = self,
  new(terraformName, botId, botVersion, localeId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lexv2models_intent",
          type:: "resource",
          attributes:: ["bot_id", "bot_version", "creation_date_time", "description", "id", "intent_id", "last_updated_date_time", "locale_id", "name", "parent_intent_signature", "region"],
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  closing_setting:: {
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
    closing_response:: {
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
    conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.withActive(active)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expressionString):: (
            {}
            + block.withExpressionString(expressionString)
          ),
          withExpressionString(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      withConditionalBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      withDefaultBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      withConditionalBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      withDefaultBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    next_step:: {
      local block = self,
      new():: (
        {}
      ),
      withSessionAttributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withSlotToElicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        withSuppressNextMessage(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
        local block = self,
        new():: (
          {}
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        slot:: {
          local block = self,
          new(mapBlockKey):: (
            {}
            + block.withMapBlockKey(mapBlockKey)
          ),
          withMapBlockKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          withShape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            withInterpretedValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          withValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          withValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        withSlot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        withSlotMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      withDialogAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      withIntent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      withDialogActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      withIntentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    withClosingResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        closing_response: value,
      }
    ),
    withConditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional: value,
      }
    ),
    withNextStep(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step: value,
      }
    ),
    withClosingResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        closing_response+: converted,
      }
    ),
    withConditionalMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional+: converted,
      }
    ),
    withNextStepMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step+: converted,
      }
    ),
  },
  confirmation_setting:: {
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
    code_hook:: {
      local block = self,
      new(active, enableCodeHookInvocation):: (
        {}
        + block.withActive(active)
        + block.withEnableCodeHookInvocation(enableCodeHookInvocation)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      withEnableCodeHookInvocation(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_code_hook_invocation" expected to be of type "bool"';
        {
          enable_code_hook_invocation: converted,
        }
      ),
      withInvocationLabel(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_label" expected to be of type "string"';
        {
          invocation_label: converted,
        }
      ),
      post_code_hook_specification:: {
        local block = self,
        new():: (
          {}
        ),
        failure_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.withActive(active)
          ),
          withActive(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.withName(name)
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expressionString):: (
                {}
                + block.withExpressionString(expressionString)
              ),
              withExpressionString(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withCondition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withConditionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          withConditionalBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          withDefaultBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          withConditionalBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          withDefaultBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        failure_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        failure_response:: {
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
        success_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.withActive(active)
          ),
          withActive(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.withName(name)
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expressionString):: (
                {}
                + block.withExpressionString(expressionString)
              ),
              withExpressionString(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withCondition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withConditionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          withConditionalBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          withDefaultBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          withConditionalBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          withDefaultBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        success_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        success_response:: {
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
        timeout_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.withActive(active)
          ),
          withActive(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.withName(name)
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expressionString):: (
                {}
                + block.withExpressionString(expressionString)
              ),
              withExpressionString(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withCondition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withConditionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          withConditionalBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          withDefaultBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          withConditionalBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          withDefaultBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        timeout_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        timeout_response:: {
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
        withFailureConditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional: value,
          }
        ),
        withFailureNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step: value,
          }
        ),
        withFailureResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response: value,
          }
        ),
        withSuccessConditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional: value,
          }
        ),
        withSuccessNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step: value,
          }
        ),
        withSuccessResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response: value,
          }
        ),
        withTimeoutConditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional: value,
          }
        ),
        withTimeoutNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step: value,
          }
        ),
        withTimeoutResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response: value,
          }
        ),
        withFailureConditionalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional+: converted,
          }
        ),
        withFailureNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step+: converted,
          }
        ),
        withFailureResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response+: converted,
          }
        ),
        withSuccessConditionalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional+: converted,
          }
        ),
        withSuccessNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step+: converted,
          }
        ),
        withSuccessResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response+: converted,
          }
        ),
        withTimeoutConditionalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional+: converted,
          }
        ),
        withTimeoutNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step+: converted,
          }
        ),
        withTimeoutResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response+: converted,
          }
        ),
      },
      withPostCodeHookSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification: value,
        }
      ),
      withPostCodeHookSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification+: converted,
        }
      ),
    },
    confirmation_conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.withActive(active)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expressionString):: (
            {}
            + block.withExpressionString(expressionString)
          ),
          withExpressionString(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      withConditionalBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      withDefaultBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      withConditionalBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      withDefaultBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    confirmation_next_step:: {
      local block = self,
      new():: (
        {}
      ),
      withSessionAttributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withSlotToElicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        withSuppressNextMessage(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
        local block = self,
        new():: (
          {}
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        slot:: {
          local block = self,
          new(mapBlockKey):: (
            {}
            + block.withMapBlockKey(mapBlockKey)
          ),
          withMapBlockKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          withShape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            withInterpretedValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          withValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          withValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        withSlot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        withSlotMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      withDialogAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      withIntent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      withDialogActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      withIntentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    confirmation_response:: {
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
    declination_conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.withActive(active)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expressionString):: (
            {}
            + block.withExpressionString(expressionString)
          ),
          withExpressionString(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      withConditionalBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      withDefaultBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      withConditionalBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      withDefaultBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    declination_next_step:: {
      local block = self,
      new():: (
        {}
      ),
      withSessionAttributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withSlotToElicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        withSuppressNextMessage(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
        local block = self,
        new():: (
          {}
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        slot:: {
          local block = self,
          new(mapBlockKey):: (
            {}
            + block.withMapBlockKey(mapBlockKey)
          ),
          withMapBlockKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          withShape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            withInterpretedValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          withValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          withValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        withSlot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        withSlotMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      withDialogAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      withIntent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      withDialogActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      withIntentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    declination_response:: {
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
    elicitation_code_hook:: {
      local block = self,
      new():: (
        {}
      ),
      withEnableCodeHookInvocation(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_code_hook_invocation" expected to be of type "bool"';
        {
          enable_code_hook_invocation: converted,
        }
      ),
      withInvocationLabel(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_label" expected to be of type "string"';
        {
          invocation_label: converted,
        }
      ),
    },
    failure_conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.withActive(active)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expressionString):: (
            {}
            + block.withExpressionString(expressionString)
          ),
          withExpressionString(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      withConditionalBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      withDefaultBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      withConditionalBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      withDefaultBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    failure_next_step:: {
      local block = self,
      new():: (
        {}
      ),
      withSessionAttributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withSlotToElicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        withSuppressNextMessage(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
        local block = self,
        new():: (
          {}
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        slot:: {
          local block = self,
          new(mapBlockKey):: (
            {}
            + block.withMapBlockKey(mapBlockKey)
          ),
          withMapBlockKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          withShape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            withInterpretedValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          withValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          withValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        withSlot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        withSlotMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      withDialogAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      withIntent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      withDialogActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      withIntentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    failure_response:: {
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
    withCodeHook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook: value,
      }
    ),
    withConfirmationConditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_conditional: value,
      }
    ),
    withConfirmationNextStep(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_next_step: value,
      }
    ),
    withConfirmationResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_response: value,
      }
    ),
    withDeclinationConditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_conditional: value,
      }
    ),
    withDeclinationNextStep(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_next_step: value,
      }
    ),
    withDeclinationResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_response: value,
      }
    ),
    withElicitationCodeHook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elicitation_code_hook: value,
      }
    ),
    withFailureConditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_conditional: value,
      }
    ),
    withFailureNextStep(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_next_step: value,
      }
    ),
    withFailureResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_response: value,
      }
    ),
    withPromptSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification: value,
      }
    ),
    withCodeHookMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook+: converted,
      }
    ),
    withConfirmationConditionalMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_conditional+: converted,
      }
    ),
    withConfirmationNextStepMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_next_step+: converted,
      }
    ),
    withConfirmationResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        confirmation_response+: converted,
      }
    ),
    withDeclinationConditionalMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_conditional+: converted,
      }
    ),
    withDeclinationNextStepMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_next_step+: converted,
      }
    ),
    withDeclinationResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        declination_response+: converted,
      }
    ),
    withElicitationCodeHookMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elicitation_code_hook+: converted,
      }
    ),
    withFailureConditionalMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_conditional+: converted,
      }
    ),
    withFailureNextStepMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_next_step+: converted,
      }
    ),
    withFailureResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failure_response+: converted,
      }
    ),
    withPromptSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        prompt_specification+: converted,
      }
    ),
  },
  dialog_code_hook:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  fulfillment_code_hook:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withActive(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
      {
        active: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    fulfillment_updates_specification:: {
      local block = self,
      new(active):: (
        {}
        + block.withActive(active)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      withTimeoutInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
        {
          timeout_in_seconds: converted,
        }
      ),
      start_response:: {
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
        withDelayInSeconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"delay_in_seconds" expected to be of type "number"';
          {
            delay_in_seconds: converted,
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
      update_response:: {
        local block = self,
        new(frequencyInSeconds):: (
          {}
          + block.withFrequencyInSeconds(frequencyInSeconds)
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
      withStartResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          start_response: value,
        }
      ),
      withUpdateResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          update_response: value,
        }
      ),
      withStartResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          start_response+: converted,
        }
      ),
      withUpdateResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          update_response+: converted,
        }
      ),
    },
    post_fulfillment_status_specification:: {
      local block = self,
      new():: (
        {}
      ),
      failure_conditional:: {
        local block = self,
        new(active):: (
          {}
          + block.withActive(active)
        ),
        withActive(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
          {
            active: converted,
          }
        ),
        conditional_branch:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          condition:: {
            local block = self,
            new(expressionString):: (
              {}
              + block.withExpressionString(expressionString)
            ),
            withExpressionString(value):: (
              local converted = value;
              assert std.isString(converted) : '"expression_string" expected to be of type "string"';
              {
                expression_string: converted,
              }
            ),
          },
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            withSessionAttributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.withType(type)
              ),
              withSlotToElicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              withSuppressNextMessage(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
              local block = self,
              new():: (
                {}
              ),
              withName(value):: (
                local converted = value;
                assert std.isString(converted) : '"name" expected to be of type "string"';
                {
                  name: converted,
                }
              ),
              slot:: {
                local block = self,
                new(mapBlockKey):: (
                  {}
                  + block.withMapBlockKey(mapBlockKey)
                ),
                withMapBlockKey(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                withShape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withInterpretedValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                withValue(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                withValueMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              withSlot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              withSlotMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            withDialogAction(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            withIntent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            withDialogActionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            withIntentMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          withCondition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition: value,
            }
          ),
          withNextStep(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          withResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          withConditionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition+: converted,
            }
          ),
          withNextStepMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          withResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        default_branch:: {
          local block = self,
          new():: (
            {}
          ),
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            withSessionAttributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.withType(type)
              ),
              withSlotToElicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              withSuppressNextMessage(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
              local block = self,
              new():: (
                {}
              ),
              withName(value):: (
                local converted = value;
                assert std.isString(converted) : '"name" expected to be of type "string"';
                {
                  name: converted,
                }
              ),
              slot:: {
                local block = self,
                new(mapBlockKey):: (
                  {}
                  + block.withMapBlockKey(mapBlockKey)
                ),
                withMapBlockKey(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                withShape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withInterpretedValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                withValue(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                withValueMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              withSlot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              withSlotMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            withDialogAction(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            withIntent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            withDialogActionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            withIntentMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          withNextStep(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          withResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          withNextStepMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          withResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        withConditionalBranch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch: value,
          }
        ),
        withDefaultBranch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch: value,
          }
        ),
        withConditionalBranchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch+: converted,
          }
        ),
        withDefaultBranchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch+: converted,
          }
        ),
      },
      failure_next_step:: {
        local block = self,
        new():: (
          {}
        ),
        withSessionAttributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
          {
            session_attributes: converted,
          }
        ),
        dialog_action:: {
          local block = self,
          new(type):: (
            {}
            + block.withType(type)
          ),
          withSlotToElicit(value):: (
            local converted = value;
            assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
            {
              slot_to_elicit: converted,
            }
          ),
          withSuppressNextMessage(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
            {
              suppress_next_message: converted,
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
        intent:: {
          local block = self,
          new():: (
            {}
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          slot:: {
            local block = self,
            new(mapBlockKey):: (
              {}
              + block.withMapBlockKey(mapBlockKey)
            ),
            withMapBlockKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            withShape(value):: (
              local converted = value;
              assert std.isString(converted) : '"shape" expected to be of type "string"';
              {
                shape: converted,
              }
            ),
            value:: {
              local block = self,
              new():: (
                {}
              ),
              withInterpretedValue(value):: (
                local converted = value;
                assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                {
                  interpreted_value: converted,
                }
              ),
            },
            withValue(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value: value,
              }
            ),
            withValueMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value+: converted,
              }
            ),
          },
          withSlot(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot: value,
            }
          ),
          withSlotMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot+: converted,
            }
          ),
        },
        withDialogAction(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action: value,
          }
        ),
        withIntent(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent: value,
          }
        ),
        withDialogActionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action+: converted,
          }
        ),
        withIntentMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent+: converted,
          }
        ),
      },
      failure_response:: {
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
      success_conditional:: {
        local block = self,
        new(active):: (
          {}
          + block.withActive(active)
        ),
        withActive(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
          {
            active: converted,
          }
        ),
        conditional_branch:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          condition:: {
            local block = self,
            new(expressionString):: (
              {}
              + block.withExpressionString(expressionString)
            ),
            withExpressionString(value):: (
              local converted = value;
              assert std.isString(converted) : '"expression_string" expected to be of type "string"';
              {
                expression_string: converted,
              }
            ),
          },
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            withSessionAttributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.withType(type)
              ),
              withSlotToElicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              withSuppressNextMessage(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
              local block = self,
              new():: (
                {}
              ),
              withName(value):: (
                local converted = value;
                assert std.isString(converted) : '"name" expected to be of type "string"';
                {
                  name: converted,
                }
              ),
              slot:: {
                local block = self,
                new(mapBlockKey):: (
                  {}
                  + block.withMapBlockKey(mapBlockKey)
                ),
                withMapBlockKey(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                withShape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withInterpretedValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                withValue(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                withValueMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              withSlot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              withSlotMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            withDialogAction(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            withIntent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            withDialogActionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            withIntentMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          withCondition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition: value,
            }
          ),
          withNextStep(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          withResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          withConditionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition+: converted,
            }
          ),
          withNextStepMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          withResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        default_branch:: {
          local block = self,
          new():: (
            {}
          ),
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            withSessionAttributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.withType(type)
              ),
              withSlotToElicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              withSuppressNextMessage(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
              local block = self,
              new():: (
                {}
              ),
              withName(value):: (
                local converted = value;
                assert std.isString(converted) : '"name" expected to be of type "string"';
                {
                  name: converted,
                }
              ),
              slot:: {
                local block = self,
                new(mapBlockKey):: (
                  {}
                  + block.withMapBlockKey(mapBlockKey)
                ),
                withMapBlockKey(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                withShape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withInterpretedValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                withValue(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                withValueMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              withSlot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              withSlotMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            withDialogAction(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            withIntent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            withDialogActionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            withIntentMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          withNextStep(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          withResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          withNextStepMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          withResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        withConditionalBranch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch: value,
          }
        ),
        withDefaultBranch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch: value,
          }
        ),
        withConditionalBranchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch+: converted,
          }
        ),
        withDefaultBranchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch+: converted,
          }
        ),
      },
      success_next_step:: {
        local block = self,
        new():: (
          {}
        ),
        withSessionAttributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
          {
            session_attributes: converted,
          }
        ),
        dialog_action:: {
          local block = self,
          new(type):: (
            {}
            + block.withType(type)
          ),
          withSlotToElicit(value):: (
            local converted = value;
            assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
            {
              slot_to_elicit: converted,
            }
          ),
          withSuppressNextMessage(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
            {
              suppress_next_message: converted,
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
        intent:: {
          local block = self,
          new():: (
            {}
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          slot:: {
            local block = self,
            new(mapBlockKey):: (
              {}
              + block.withMapBlockKey(mapBlockKey)
            ),
            withMapBlockKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            withShape(value):: (
              local converted = value;
              assert std.isString(converted) : '"shape" expected to be of type "string"';
              {
                shape: converted,
              }
            ),
            value:: {
              local block = self,
              new():: (
                {}
              ),
              withInterpretedValue(value):: (
                local converted = value;
                assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                {
                  interpreted_value: converted,
                }
              ),
            },
            withValue(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value: value,
              }
            ),
            withValueMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value+: converted,
              }
            ),
          },
          withSlot(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot: value,
            }
          ),
          withSlotMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot+: converted,
            }
          ),
        },
        withDialogAction(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action: value,
          }
        ),
        withIntent(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent: value,
          }
        ),
        withDialogActionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action+: converted,
          }
        ),
        withIntentMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent+: converted,
          }
        ),
      },
      success_response:: {
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
      timeout_conditional:: {
        local block = self,
        new(active):: (
          {}
          + block.withActive(active)
        ),
        withActive(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
          {
            active: converted,
          }
        ),
        conditional_branch:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          condition:: {
            local block = self,
            new(expressionString):: (
              {}
              + block.withExpressionString(expressionString)
            ),
            withExpressionString(value):: (
              local converted = value;
              assert std.isString(converted) : '"expression_string" expected to be of type "string"';
              {
                expression_string: converted,
              }
            ),
          },
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            withSessionAttributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.withType(type)
              ),
              withSlotToElicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              withSuppressNextMessage(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
              local block = self,
              new():: (
                {}
              ),
              withName(value):: (
                local converted = value;
                assert std.isString(converted) : '"name" expected to be of type "string"';
                {
                  name: converted,
                }
              ),
              slot:: {
                local block = self,
                new(mapBlockKey):: (
                  {}
                  + block.withMapBlockKey(mapBlockKey)
                ),
                withMapBlockKey(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                withShape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withInterpretedValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                withValue(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                withValueMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              withSlot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              withSlotMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            withDialogAction(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            withIntent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            withDialogActionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            withIntentMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          withCondition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition: value,
            }
          ),
          withNextStep(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          withResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          withConditionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition+: converted,
            }
          ),
          withNextStepMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          withResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        default_branch:: {
          local block = self,
          new():: (
            {}
          ),
          next_step:: {
            local block = self,
            new():: (
              {}
            ),
            withSessionAttributes(value):: (
              local converted = value;
              assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
              {
                session_attributes: converted,
              }
            ),
            dialog_action:: {
              local block = self,
              new(type):: (
                {}
                + block.withType(type)
              ),
              withSlotToElicit(value):: (
                local converted = value;
                assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                {
                  slot_to_elicit: converted,
                }
              ),
              withSuppressNextMessage(value):: (
                local converted = value;
                assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                {
                  suppress_next_message: converted,
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
            intent:: {
              local block = self,
              new():: (
                {}
              ),
              withName(value):: (
                local converted = value;
                assert std.isString(converted) : '"name" expected to be of type "string"';
                {
                  name: converted,
                }
              ),
              slot:: {
                local block = self,
                new(mapBlockKey):: (
                  {}
                  + block.withMapBlockKey(mapBlockKey)
                ),
                withMapBlockKey(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                  {
                    map_block_key: converted,
                  }
                ),
                withShape(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"shape" expected to be of type "string"';
                  {
                    shape: converted,
                  }
                ),
                value:: {
                  local block = self,
                  new():: (
                    {}
                  ),
                  withInterpretedValue(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                    {
                      interpreted_value: converted,
                    }
                  ),
                },
                withValue(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value: value,
                  }
                ),
                withValueMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    value+: converted,
                  }
                ),
              },
              withSlot(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot: value,
                }
              ),
              withSlotMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  slot+: converted,
                }
              ),
            },
            withDialogAction(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action: value,
              }
            ),
            withIntent(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent: value,
              }
            ),
            withDialogActionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dialog_action+: converted,
              }
            ),
            withIntentMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                intent+: converted,
              }
            ),
          },
          response:: {
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
          withNextStep(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step: value,
            }
          ),
          withResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response: value,
            }
          ),
          withNextStepMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              next_step+: converted,
            }
          ),
          withResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              response+: converted,
            }
          ),
        },
        withConditionalBranch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch: value,
          }
        ),
        withDefaultBranch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch: value,
          }
        ),
        withConditionalBranchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional_branch+: converted,
          }
        ),
        withDefaultBranchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            default_branch+: converted,
          }
        ),
      },
      timeout_next_step:: {
        local block = self,
        new():: (
          {}
        ),
        withSessionAttributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
          {
            session_attributes: converted,
          }
        ),
        dialog_action:: {
          local block = self,
          new(type):: (
            {}
            + block.withType(type)
          ),
          withSlotToElicit(value):: (
            local converted = value;
            assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
            {
              slot_to_elicit: converted,
            }
          ),
          withSuppressNextMessage(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
            {
              suppress_next_message: converted,
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
        intent:: {
          local block = self,
          new():: (
            {}
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          slot:: {
            local block = self,
            new(mapBlockKey):: (
              {}
              + block.withMapBlockKey(mapBlockKey)
            ),
            withMapBlockKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
              {
                map_block_key: converted,
              }
            ),
            withShape(value):: (
              local converted = value;
              assert std.isString(converted) : '"shape" expected to be of type "string"';
              {
                shape: converted,
              }
            ),
            value:: {
              local block = self,
              new():: (
                {}
              ),
              withInterpretedValue(value):: (
                local converted = value;
                assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                {
                  interpreted_value: converted,
                }
              ),
            },
            withValue(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value: value,
              }
            ),
            withValueMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value+: converted,
              }
            ),
          },
          withSlot(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot: value,
            }
          ),
          withSlotMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              slot+: converted,
            }
          ),
        },
        withDialogAction(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action: value,
          }
        ),
        withIntent(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent: value,
          }
        ),
        withDialogActionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            dialog_action+: converted,
          }
        ),
        withIntentMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            intent+: converted,
          }
        ),
      },
      timeout_response:: {
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
      withFailureConditional(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_conditional: value,
        }
      ),
      withFailureNextStep(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_next_step: value,
        }
      ),
      withFailureResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_response: value,
        }
      ),
      withSuccessConditional(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_conditional: value,
        }
      ),
      withSuccessNextStep(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_next_step: value,
        }
      ),
      withSuccessResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_response: value,
        }
      ),
      withTimeoutConditional(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_conditional: value,
        }
      ),
      withTimeoutNextStep(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_next_step: value,
        }
      ),
      withTimeoutResponse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_response: value,
        }
      ),
      withFailureConditionalMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_conditional+: converted,
        }
      ),
      withFailureNextStepMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_next_step+: converted,
        }
      ),
      withFailureResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          failure_response+: converted,
        }
      ),
      withSuccessConditionalMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_conditional+: converted,
        }
      ),
      withSuccessNextStepMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_next_step+: converted,
        }
      ),
      withSuccessResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          success_response+: converted,
        }
      ),
      withTimeoutConditionalMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_conditional+: converted,
        }
      ),
      withTimeoutNextStepMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_next_step+: converted,
        }
      ),
      withTimeoutResponseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout_response+: converted,
        }
      ),
    },
    withFulfillmentUpdatesSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fulfillment_updates_specification: value,
      }
    ),
    withPostFulfillmentStatusSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_fulfillment_status_specification: value,
      }
    ),
    withFulfillmentUpdatesSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fulfillment_updates_specification+: converted,
      }
    ),
    withPostFulfillmentStatusSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        post_fulfillment_status_specification+: converted,
      }
    ),
  },
  initial_response_setting:: {
    local block = self,
    new():: (
      {}
    ),
    code_hook:: {
      local block = self,
      new(active, enableCodeHookInvocation):: (
        {}
        + block.withActive(active)
        + block.withEnableCodeHookInvocation(enableCodeHookInvocation)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      withEnableCodeHookInvocation(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_code_hook_invocation" expected to be of type "bool"';
        {
          enable_code_hook_invocation: converted,
        }
      ),
      withInvocationLabel(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_label" expected to be of type "string"';
        {
          invocation_label: converted,
        }
      ),
      post_code_hook_specification:: {
        local block = self,
        new():: (
          {}
        ),
        failure_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.withActive(active)
          ),
          withActive(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.withName(name)
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expressionString):: (
                {}
                + block.withExpressionString(expressionString)
              ),
              withExpressionString(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withCondition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withConditionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          withConditionalBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          withDefaultBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          withConditionalBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          withDefaultBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        failure_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        failure_response:: {
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
        success_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.withActive(active)
          ),
          withActive(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.withName(name)
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expressionString):: (
                {}
                + block.withExpressionString(expressionString)
              ),
              withExpressionString(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withCondition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withConditionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          withConditionalBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          withDefaultBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          withConditionalBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          withDefaultBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        success_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        success_response:: {
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
        timeout_conditional:: {
          local block = self,
          new(active):: (
            {}
            + block.withActive(active)
          ),
          withActive(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
            {
              active: converted,
            }
          ),
          conditional_branch:: {
            local block = self,
            new(name):: (
              {}
              + block.withName(name)
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            condition:: {
              local block = self,
              new(expressionString):: (
                {}
                + block.withExpressionString(expressionString)
              ),
              withExpressionString(value):: (
                local converted = value;
                assert std.isString(converted) : '"expression_string" expected to be of type "string"';
                {
                  expression_string: converted,
                }
              ),
            },
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withCondition(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition: value,
              }
            ),
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withConditionMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                condition+: converted,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          default_branch:: {
            local block = self,
            new():: (
              {}
            ),
            next_step:: {
              local block = self,
              new():: (
                {}
              ),
              withSessionAttributes(value):: (
                local converted = value;
                assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
                {
                  session_attributes: converted,
                }
              ),
              dialog_action:: {
                local block = self,
                new(type):: (
                  {}
                  + block.withType(type)
                ),
                withSlotToElicit(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
                  {
                    slot_to_elicit: converted,
                  }
                ),
                withSuppressNextMessage(value):: (
                  local converted = value;
                  assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
                  {
                    suppress_next_message: converted,
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
              intent:: {
                local block = self,
                new():: (
                  {}
                ),
                withName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"name" expected to be of type "string"';
                  {
                    name: converted,
                  }
                ),
                slot:: {
                  local block = self,
                  new(mapBlockKey):: (
                    {}
                    + block.withMapBlockKey(mapBlockKey)
                  ),
                  withMapBlockKey(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                    {
                      map_block_key: converted,
                    }
                  ),
                  withShape(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"shape" expected to be of type "string"';
                    {
                      shape: converted,
                    }
                  ),
                  value:: {
                    local block = self,
                    new():: (
                      {}
                    ),
                    withInterpretedValue(value):: (
                      local converted = value;
                      assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                      {
                        interpreted_value: converted,
                      }
                    ),
                  },
                  withValue(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value: value,
                    }
                  ),
                  withValueMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    {
                      value+: converted,
                    }
                  ),
                },
                withSlot(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot: value,
                  }
                ),
                withSlotMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    slot+: converted,
                  }
                ),
              },
              withDialogAction(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action: value,
                }
              ),
              withIntent(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent: value,
                }
              ),
              withDialogActionMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dialog_action+: converted,
                }
              ),
              withIntentMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  intent+: converted,
                }
              ),
            },
            response:: {
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
            withNextStep(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step: value,
              }
            ),
            withResponse(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response: value,
              }
            ),
            withNextStepMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                next_step+: converted,
              }
            ),
            withResponseMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response+: converted,
              }
            ),
          },
          withConditionalBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch: value,
            }
          ),
          withDefaultBranch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch: value,
            }
          ),
          withConditionalBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              conditional_branch+: converted,
            }
          ),
          withDefaultBranchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              default_branch+: converted,
            }
          ),
        },
        timeout_next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        timeout_response:: {
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
        withFailureConditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional: value,
          }
        ),
        withFailureNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step: value,
          }
        ),
        withFailureResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response: value,
          }
        ),
        withSuccessConditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional: value,
          }
        ),
        withSuccessNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step: value,
          }
        ),
        withSuccessResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response: value,
          }
        ),
        withTimeoutConditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional: value,
          }
        ),
        withTimeoutNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step: value,
          }
        ),
        withTimeoutResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response: value,
          }
        ),
        withFailureConditionalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_conditional+: converted,
          }
        ),
        withFailureNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_next_step+: converted,
          }
        ),
        withFailureResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            failure_response+: converted,
          }
        ),
        withSuccessConditionalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_conditional+: converted,
          }
        ),
        withSuccessNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_next_step+: converted,
          }
        ),
        withSuccessResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response+: converted,
          }
        ),
        withTimeoutConditionalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_conditional+: converted,
          }
        ),
        withTimeoutNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_next_step+: converted,
          }
        ),
        withTimeoutResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            timeout_response+: converted,
          }
        ),
      },
      withPostCodeHookSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification: value,
        }
      ),
      withPostCodeHookSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          post_code_hook_specification+: converted,
        }
      ),
    },
    conditional:: {
      local block = self,
      new(active):: (
        {}
        + block.withActive(active)
      ),
      withActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
        {
          active: converted,
        }
      ),
      conditional_branch:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        condition:: {
          local block = self,
          new(expressionString):: (
            {}
            + block.withExpressionString(expressionString)
          ),
          withExpressionString(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression_string" expected to be of type "string"';
            {
              expression_string: converted,
            }
          ),
        },
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      default_branch:: {
        local block = self,
        new():: (
          {}
        ),
        next_step:: {
          local block = self,
          new():: (
            {}
          ),
          withSessionAttributes(value):: (
            local converted = value;
            assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
            {
              session_attributes: converted,
            }
          ),
          dialog_action:: {
            local block = self,
            new(type):: (
              {}
              + block.withType(type)
            ),
            withSlotToElicit(value):: (
              local converted = value;
              assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
              {
                slot_to_elicit: converted,
              }
            ),
            withSuppressNextMessage(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
              {
                suppress_next_message: converted,
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
          intent:: {
            local block = self,
            new():: (
              {}
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            slot:: {
              local block = self,
              new(mapBlockKey):: (
                {}
                + block.withMapBlockKey(mapBlockKey)
              ),
              withMapBlockKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
                {
                  map_block_key: converted,
                }
              ),
              withShape(value):: (
                local converted = value;
                assert std.isString(converted) : '"shape" expected to be of type "string"';
                {
                  shape: converted,
                }
              ),
              value:: {
                local block = self,
                new():: (
                  {}
                ),
                withInterpretedValue(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
                  {
                    interpreted_value: converted,
                  }
                ),
              },
              withValue(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value: value,
                }
              ),
              withValueMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  value+: converted,
                }
              ),
            },
            withSlot(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot: value,
              }
            ),
            withSlotMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                slot+: converted,
              }
            ),
          },
          withDialogAction(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action: value,
            }
          ),
          withIntent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent: value,
            }
          ),
          withDialogActionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dialog_action+: converted,
            }
          ),
          withIntentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              intent+: converted,
            }
          ),
        },
        response:: {
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
        withNextStep(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step: value,
          }
        ),
        withResponse(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response: value,
          }
        ),
        withNextStepMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            next_step+: converted,
          }
        ),
        withResponseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            response+: converted,
          }
        ),
      },
      withConditionalBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch: value,
        }
      ),
      withDefaultBranch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch: value,
        }
      ),
      withConditionalBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conditional_branch+: converted,
        }
      ),
      withDefaultBranchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_branch+: converted,
        }
      ),
    },
    initial_response:: {
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
    next_step:: {
      local block = self,
      new():: (
        {}
      ),
      withSessionAttributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"session_attributes" expected to be of type "map"';
        {
          session_attributes: converted,
        }
      ),
      dialog_action:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withSlotToElicit(value):: (
          local converted = value;
          assert std.isString(converted) : '"slot_to_elicit" expected to be of type "string"';
          {
            slot_to_elicit: converted,
          }
        ),
        withSuppressNextMessage(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"suppress_next_message" expected to be of type "bool"';
          {
            suppress_next_message: converted,
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
      intent:: {
        local block = self,
        new():: (
          {}
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        slot:: {
          local block = self,
          new(mapBlockKey):: (
            {}
            + block.withMapBlockKey(mapBlockKey)
          ),
          withMapBlockKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          withShape(value):: (
            local converted = value;
            assert std.isString(converted) : '"shape" expected to be of type "string"';
            {
              shape: converted,
            }
          ),
          value:: {
            local block = self,
            new():: (
              {}
            ),
            withInterpretedValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"interpreted_value" expected to be of type "string"';
              {
                interpreted_value: converted,
              }
            ),
          },
          withValue(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value: value,
            }
          ),
          withValueMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              value+: converted,
            }
          ),
        },
        withSlot(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot: value,
          }
        ),
        withSlotMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            slot+: converted,
          }
        ),
      },
      withDialogAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action: value,
        }
      ),
      withIntent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent: value,
        }
      ),
      withDialogActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dialog_action+: converted,
        }
      ),
      withIntentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          intent+: converted,
        }
      ),
    },
    withCodeHook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook: value,
      }
    ),
    withConditional(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional: value,
      }
    ),
    withInitialResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_response: value,
      }
    ),
    withNextStep(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step: value,
      }
    ),
    withCodeHookMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_hook+: converted,
      }
    ),
    withConditionalMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditional+: converted,
      }
    ),
    withInitialResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_response+: converted,
      }
    ),
    withNextStepMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        next_step+: converted,
      }
    ),
  },
  input_context:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  kendra_configuration:: {
    local block = self,
    new(kendraIndex):: (
      {}
      + block.withKendraIndex(kendraIndex)
    ),
    withKendraIndex(value):: (
      local converted = value;
      assert std.isString(converted) : '"kendra_index" expected to be of type "string"';
      {
        kendra_index: converted,
      }
    ),
    withQueryFilterString(value):: (
      local converted = value;
      assert std.isString(converted) : '"query_filter_string" expected to be of type "string"';
      {
        query_filter_string: converted,
      }
    ),
    withQueryFilterStringEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"query_filter_string_enabled" expected to be of type "bool"';
      {
        query_filter_string_enabled: converted,
      }
    ),
  },
  output_context:: {
    local block = self,
    new(name, timeToLiveInSeconds, turnsToLive):: (
      {}
      + block.withName(name)
      + block.withTimeToLiveInSeconds(timeToLiveInSeconds)
      + block.withTurnsToLive(turnsToLive)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withTimeToLiveInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"time_to_live_in_seconds" expected to be of type "number"';
      {
        time_to_live_in_seconds: converted,
      }
    ),
    withTurnsToLive(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"turns_to_live" expected to be of type "number"';
      {
        turns_to_live: converted,
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
  slot_priority:: {
    local block = self,
    new(priority, slotId):: (
      {}
      + block.withPriority(priority)
      + block.withSlotId(slotId)
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    withSlotId(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_id" expected to be of type "string"';
      {
        slot_id: converted,
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
  withClosingSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      closing_setting: value,
    }
  ),
  withConfirmationSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_setting: value,
    }
  ),
  withDialogCodeHook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook: value,
    }
  ),
  withFulfillmentCodeHook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_code_hook: value,
    }
  ),
  withInitialResponseSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_response_setting: value,
    }
  ),
  withInputContext(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_context: value,
    }
  ),
  withKendraConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kendra_configuration: value,
    }
  ),
  withOutputContext(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_context: value,
    }
  ),
  withSampleUtterance(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sample_utterance: value,
    }
  ),
  withSlotPriority(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_priority: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withClosingSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      closing_setting+: converted,
    }
  ),
  withConfirmationSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      confirmation_setting+: converted,
    }
  ),
  withDialogCodeHookMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dialog_code_hook+: converted,
    }
  ),
  withFulfillmentCodeHookMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fulfillment_code_hook+: converted,
    }
  ),
  withInitialResponseSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_response_setting+: converted,
    }
  ),
  withInputContextMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_context+: converted,
    }
  ),
  withKendraConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kendra_configuration+: converted,
    }
  ),
  withOutputContextMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_context+: converted,
    }
  ),
  withSampleUtteranceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sample_utterance+: converted,
    }
  ),
  withSlotPriorityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      slot_priority+: converted,
    }
  ),
}

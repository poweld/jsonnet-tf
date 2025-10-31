{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_prompt",
          type:: "resource",
          attributes:: ["arn", "created_at", "customer_encryption_key_arn", "default_variant", "description", "id", "name", "region", "tags", "tags_all", "updated_at", "version"],
        },
      },
    }
    + block.withName(name)
  ),
  withCustomerEncryptionKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_encryption_key_arn" expected to be of type "string"';
    {
      customer_encryption_key_arn: converted,
    }
  ),
  withDefaultVariant(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_variant" expected to be of type "string"';
    {
      default_variant: converted,
    }
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
  variant:: {
    local block = self,
    new(name, templateType):: (
      {}
      + block.withName(name)
      + block.withTemplateType(templateType)
    ),
    withAdditionalModelRequestFields(value):: (
      local converted = value;
      assert std.isString(converted) : '"additional_model_request_fields" expected to be of type "string"';
      {
        additional_model_request_fields: converted,
      }
    ),
    withModelId(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_id" expected to be of type "string"';
      {
        model_id: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withTemplateType(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_type" expected to be of type "string"';
      {
        template_type: converted,
      }
    ),
    gen_ai_resource:: {
      local block = self,
      new():: (
        {}
      ),
      agent:: {
        local block = self,
        new(agentIdentifier):: (
          {}
          + block.withAgentIdentifier(agentIdentifier)
        ),
        withAgentIdentifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"agent_identifier" expected to be of type "string"';
          {
            agent_identifier: converted,
          }
        ),
      },
      withAgent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          agent: value,
        }
      ),
      withAgentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          agent+: converted,
        }
      ),
    },
    inference_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      text:: {
        local block = self,
        new():: (
          {}
        ),
        withMaxTokens(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_tokens" expected to be of type "number"';
          {
            max_tokens: converted,
          }
        ),
        withStopSequences(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"stop_sequences" expected to be of type "list"';
          {
            stop_sequences: converted,
          }
        ),
        withStopSequencesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"stop_sequences" expected to be of type "list"';
          {
            stop_sequences+: converted,
          }
        ),
        withTemperature(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"temperature" expected to be of type "number"';
          {
            temperature: converted,
          }
        ),
        withTopP(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"top_p" expected to be of type "number"';
          {
            top_p: converted,
          }
        ),
      },
      withText(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text: value,
        }
      ),
      withTextMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text+: converted,
        }
      ),
    },
    metadata:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    template_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      chat:: {
        local block = self,
        new():: (
          {}
        ),
        input_variable:: {
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
        message:: {
          local block = self,
          new(role):: (
            {}
            + block.withRole(role)
          ),
          withRole(value):: (
            local converted = value;
            assert std.isString(converted) : '"role" expected to be of type "string"';
            {
              role: converted,
            }
          ),
          content:: {
            local block = self,
            new():: (
              {}
            ),
            withText(value):: (
              local converted = value;
              assert std.isString(converted) : '"text" expected to be of type "string"';
              {
                text: converted,
              }
            ),
            cache_point:: {
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
            },
            withCachePoint(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point: value,
              }
            ),
            withCachePointMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point+: converted,
              }
            ),
          },
          withContent(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              content: value,
            }
          ),
          withContentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              content+: converted,
            }
          ),
        },
        system:: {
          local block = self,
          new():: (
            {}
          ),
          withText(value):: (
            local converted = value;
            assert std.isString(converted) : '"text" expected to be of type "string"';
            {
              text: converted,
            }
          ),
          cache_point:: {
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
          },
          withCachePoint(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cache_point: value,
            }
          ),
          withCachePointMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              cache_point+: converted,
            }
          ),
        },
        tool_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          tool:: {
            local block = self,
            new():: (
              {}
            ),
            cache_point:: {
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
            },
            tool_spec:: {
              local block = self,
              new(name):: (
                {}
                + block.withName(name)
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
              input_schema:: {
                local block = self,
                new():: (
                  {}
                ),
                withJson(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"json" expected to be of type "string"';
                  {
                    json: converted,
                  }
                ),
              },
              withInputSchema(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  input_schema: value,
                }
              ),
              withInputSchemaMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  input_schema+: converted,
                }
              ),
            },
            withCachePoint(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point: value,
              }
            ),
            withToolSpec(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool_spec: value,
              }
            ),
            withCachePointMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                cache_point+: converted,
              }
            ),
            withToolSpecMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool_spec+: converted,
              }
            ),
          },
          tool_choice:: {
            local block = self,
            new():: (
              {}
            ),
            any:: {
              local block = self,
              new():: (
                {}
              ),
            },
            auto:: {
              local block = self,
              new():: (
                {}
              ),
            },
            tool:: {
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
            withAny(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                any: value,
              }
            ),
            withAuto(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                auto: value,
              }
            ),
            withTool(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool: value,
              }
            ),
            withAnyMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                any+: converted,
              }
            ),
            withAutoMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                auto+: converted,
              }
            ),
            withToolMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tool+: converted,
              }
            ),
          },
          withTool(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool: value,
            }
          ),
          withToolChoice(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool_choice: value,
            }
          ),
          withToolMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool+: converted,
            }
          ),
          withToolChoiceMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tool_choice+: converted,
            }
          ),
        },
        withInputVariable(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable: value,
          }
        ),
        withMessage(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message: value,
          }
        ),
        withSystem(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            system: value,
          }
        ),
        withToolConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tool_configuration: value,
          }
        ),
        withInputVariableMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable+: converted,
          }
        ),
        withMessageMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            message+: converted,
          }
        ),
        withSystemMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            system+: converted,
          }
        ),
        withToolConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tool_configuration+: converted,
          }
        ),
      },
      text:: {
        local block = self,
        new(text):: (
          {}
          + block.withText(text)
        ),
        withText(value):: (
          local converted = value;
          assert std.isString(converted) : '"text" expected to be of type "string"';
          {
            text: converted,
          }
        ),
        cache_point:: {
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
        },
        input_variable:: {
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
        withCachePoint(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cache_point: value,
          }
        ),
        withInputVariable(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable: value,
          }
        ),
        withCachePointMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cache_point+: converted,
          }
        ),
        withInputVariableMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_variable+: converted,
          }
        ),
      },
      withChat(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          chat: value,
        }
      ),
      withText(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text: value,
        }
      ),
      withChatMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          chat+: converted,
        }
      ),
      withTextMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          text+: converted,
        }
      ),
    },
    withGenAiResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        gen_ai_resource: value,
      }
    ),
    withInferenceConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inference_configuration: value,
      }
    ),
    withMetadata(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata: value,
      }
    ),
    withTemplateConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration: value,
      }
    ),
    withGenAiResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        gen_ai_resource+: converted,
      }
    ),
    withInferenceConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inference_configuration+: converted,
      }
    ),
    withMetadataMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata+: converted,
      }
    ),
    withTemplateConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_configuration+: converted,
      }
    ),
  },
  withVariant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variant: value,
    }
  ),
  withVariantMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variant+: converted,
    }
  ),
}

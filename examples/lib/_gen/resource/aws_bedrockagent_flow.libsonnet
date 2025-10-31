{
  local block = self,
  new(terraformName, executionRoleArn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_flow",
          type:: "resource",
          attributes:: ["arn", "created_at", "customer_encryption_key_arn", "description", "execution_role_arn", "id", "name", "region", "status", "tags", "tags_all", "updated_at", "version"],
        },
      },
    }
    + block.withExecutionRoleArn(executionRoleArn)
    + block.withName(name)
  ),
  withCustomerEncryptionKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_encryption_key_arn" expected to be of type "string"';
    {
      customer_encryption_key_arn: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
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
  definition:: {
    local block = self,
    new():: (
      {}
    ),
    connection:: {
      local block = self,
      new(name, source, target, type):: (
        {}
        + block.withName(name)
        + block.withSource(source)
        + block.withTarget(target)
        + block.withType(type)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withSource(value):: (
        local converted = value;
        assert std.isString(converted) : '"source" expected to be of type "string"';
        {
          source: converted,
        }
      ),
      withTarget(value):: (
        local converted = value;
        assert std.isString(converted) : '"target" expected to be of type "string"';
        {
          target: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      configuration:: {
        local block = self,
        new():: (
          {}
        ),
        conditional:: {
          local block = self,
          new(condition):: (
            {}
            + block.withCondition(condition)
          ),
          withCondition(value):: (
            local converted = value;
            assert std.isString(converted) : '"condition" expected to be of type "string"';
            {
              condition: converted,
            }
          ),
        },
        data:: {
          local block = self,
          new(sourceOutput, targetInput):: (
            {}
            + block.withSourceOutput(sourceOutput)
            + block.withTargetInput(targetInput)
          ),
          withSourceOutput(value):: (
            local converted = value;
            assert std.isString(converted) : '"source_output" expected to be of type "string"';
            {
              source_output: converted,
            }
          ),
          withTargetInput(value):: (
            local converted = value;
            assert std.isString(converted) : '"target_input" expected to be of type "string"';
            {
              target_input: converted,
            }
          ),
        },
        withConditional(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional: value,
          }
        ),
        withData(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            data: value,
          }
        ),
        withConditionalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            conditional+: converted,
          }
        ),
        withDataMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            data+: converted,
          }
        ),
      },
      withConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configuration: value,
        }
      ),
      withConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configuration+: converted,
        }
      ),
    },
    node:: {
      local block = self,
      new(name, type):: (
        {}
        + block.withName(name)
        + block.withType(type)
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
      configuration:: {
        local block = self,
        new():: (
          {}
        ),
        agent:: {
          local block = self,
          new(agentAliasArn):: (
            {}
            + block.withAgentAliasArn(agentAliasArn)
          ),
          withAgentAliasArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"agent_alias_arn" expected to be of type "string"';
            {
              agent_alias_arn: converted,
            }
          ),
        },
        collector:: {
          local block = self,
          new():: (
            {}
          ),
        },
        condition:: {
          local block = self,
          new():: (
            {}
          ),
          condition:: {
            local block = self,
            new(name):: (
              {}
              + block.withName(name)
            ),
            withExpression(value):: (
              local converted = value;
              assert std.isString(converted) : '"expression" expected to be of type "string"';
              {
                expression: converted,
              }
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
          },
          withCondition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition: value,
            }
          ),
          withConditionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              condition+: converted,
            }
          ),
        },
        inline_code:: {
          local block = self,
          new(code, language):: (
            {}
            + block.withCode(code)
            + block.withLanguage(language)
          ),
          withCode(value):: (
            local converted = value;
            assert std.isString(converted) : '"code" expected to be of type "string"';
            {
              code: converted,
            }
          ),
          withLanguage(value):: (
            local converted = value;
            assert std.isString(converted) : '"language" expected to be of type "string"';
            {
              language: converted,
            }
          ),
        },
        input:: {
          local block = self,
          new():: (
            {}
          ),
        },
        iterator:: {
          local block = self,
          new():: (
            {}
          ),
        },
        knowledge_base:: {
          local block = self,
          new(knowledgeBaseId, modelId):: (
            {}
            + block.withKnowledgeBaseId(knowledgeBaseId)
            + block.withModelId(modelId)
          ),
          withKnowledgeBaseId(value):: (
            local converted = value;
            assert std.isString(converted) : '"knowledge_base_id" expected to be of type "string"';
            {
              knowledge_base_id: converted,
            }
          ),
          withModelId(value):: (
            local converted = value;
            assert std.isString(converted) : '"model_id" expected to be of type "string"';
            {
              model_id: converted,
            }
          ),
          withNumberOfResults(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"number_of_results" expected to be of type "number"';
            {
              number_of_results: converted,
            }
          ),
          guardrail_configuration:: {
            local block = self,
            new(guardrailIdentifier, guardrailVersion):: (
              {}
              + block.withGuardrailIdentifier(guardrailIdentifier)
              + block.withGuardrailVersion(guardrailVersion)
            ),
            withGuardrailIdentifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"guardrail_identifier" expected to be of type "string"';
              {
                guardrail_identifier: converted,
              }
            ),
            withGuardrailVersion(value):: (
              local converted = value;
              assert std.isString(converted) : '"guardrail_version" expected to be of type "string"';
              {
                guardrail_version: converted,
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
          withGuardrailConfiguration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              guardrail_configuration: value,
            }
          ),
          withInferenceConfiguration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              inference_configuration: value,
            }
          ),
          withGuardrailConfigurationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              guardrail_configuration+: converted,
            }
          ),
          withInferenceConfigurationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              inference_configuration+: converted,
            }
          ),
        },
        lambda_function:: {
          local block = self,
          new(lambdaArn):: (
            {}
            + block.withLambdaArn(lambdaArn)
          ),
          withLambdaArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
            {
              lambda_arn: converted,
            }
          ),
        },
        lex:: {
          local block = self,
          new(botAliasArn, localeId):: (
            {}
            + block.withBotAliasArn(botAliasArn)
            + block.withLocaleId(localeId)
          ),
          withBotAliasArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"bot_alias_arn" expected to be of type "string"';
            {
              bot_alias_arn: converted,
            }
          ),
          withLocaleId(value):: (
            local converted = value;
            assert std.isString(converted) : '"locale_id" expected to be of type "string"';
            {
              locale_id: converted,
            }
          ),
        },
        output:: {
          local block = self,
          new():: (
            {}
          ),
        },
        prompt:: {
          local block = self,
          new():: (
            {}
          ),
          guardrail_configuration:: {
            local block = self,
            new(guardrailIdentifier, guardrailVersion):: (
              {}
              + block.withGuardrailIdentifier(guardrailIdentifier)
              + block.withGuardrailVersion(guardrailVersion)
            ),
            withGuardrailIdentifier(value):: (
              local converted = value;
              assert std.isString(converted) : '"guardrail_identifier" expected to be of type "string"';
              {
                guardrail_identifier: converted,
              }
            ),
            withGuardrailVersion(value):: (
              local converted = value;
              assert std.isString(converted) : '"guardrail_version" expected to be of type "string"';
              {
                guardrail_version: converted,
              }
            ),
          },
          source_configuration:: {
            local block = self,
            new():: (
              {}
            ),
            inline:: {
              local block = self,
              new(modelId, templateType):: (
                {}
                + block.withModelId(modelId)
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
              withTemplateType(value):: (
                local converted = value;
                assert std.isString(converted) : '"template_type" expected to be of type "string"';
                {
                  template_type: converted,
                }
              ),
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
              withInferenceConfiguration(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  inference_configuration: value,
                }
              ),
              withTemplateConfiguration(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  template_configuration: value,
                }
              ),
              withInferenceConfigurationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  inference_configuration+: converted,
                }
              ),
              withTemplateConfigurationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  template_configuration+: converted,
                }
              ),
            },
            resource:: {
              local block = self,
              new(promptArn):: (
                {}
                + block.withPromptArn(promptArn)
              ),
              withPromptArn(value):: (
                local converted = value;
                assert std.isString(converted) : '"prompt_arn" expected to be of type "string"';
                {
                  prompt_arn: converted,
                }
              ),
            },
            withInline(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                inline: value,
              }
            ),
            withResource(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                resource: value,
              }
            ),
            withInlineMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                inline+: converted,
              }
            ),
            withResourceMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                resource+: converted,
              }
            ),
          },
          withGuardrailConfiguration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              guardrail_configuration: value,
            }
          ),
          withSourceConfiguration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              source_configuration: value,
            }
          ),
          withGuardrailConfigurationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              guardrail_configuration+: converted,
            }
          ),
          withSourceConfigurationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              source_configuration+: converted,
            }
          ),
        },
        retrieval:: {
          local block = self,
          new():: (
            {}
          ),
          service_configuration:: {
            local block = self,
            new():: (
              {}
            ),
            s3:: {
              local block = self,
              new(bucketName):: (
                {}
                + block.withBucketName(bucketName)
              ),
              withBucketName(value):: (
                local converted = value;
                assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
                {
                  bucket_name: converted,
                }
              ),
            },
            withS3(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                s3: value,
              }
            ),
            withS3Mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                s3+: converted,
              }
            ),
          },
          withServiceConfiguration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              service_configuration: value,
            }
          ),
          withServiceConfigurationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              service_configuration+: converted,
            }
          ),
        },
        storage:: {
          local block = self,
          new():: (
            {}
          ),
          service_configuration:: {
            local block = self,
            new():: (
              {}
            ),
            s3:: {
              local block = self,
              new(bucketName):: (
                {}
                + block.withBucketName(bucketName)
              ),
              withBucketName(value):: (
                local converted = value;
                assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
                {
                  bucket_name: converted,
                }
              ),
            },
            withS3(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                s3: value,
              }
            ),
            withS3Mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                s3+: converted,
              }
            ),
          },
          withServiceConfiguration(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              service_configuration: value,
            }
          ),
          withServiceConfigurationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              service_configuration+: converted,
            }
          ),
        },
        withAgent(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            agent: value,
          }
        ),
        withCollector(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            collector: value,
          }
        ),
        withCondition(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition: value,
          }
        ),
        withInlineCode(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inline_code: value,
          }
        ),
        withInput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input: value,
          }
        ),
        withIterator(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            iterator: value,
          }
        ),
        withKnowledgeBase(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            knowledge_base: value,
          }
        ),
        withLambdaFunction(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_function: value,
          }
        ),
        withLex(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lex: value,
          }
        ),
        withOutput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            output: value,
          }
        ),
        withPrompt(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prompt: value,
          }
        ),
        withRetrieval(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retrieval: value,
          }
        ),
        withStorage(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            storage: value,
          }
        ),
        withAgentMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            agent+: converted,
          }
        ),
        withCollectorMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            collector+: converted,
          }
        ),
        withConditionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            condition+: converted,
          }
        ),
        withInlineCodeMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inline_code+: converted,
          }
        ),
        withInputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input+: converted,
          }
        ),
        withIteratorMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            iterator+: converted,
          }
        ),
        withKnowledgeBaseMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            knowledge_base+: converted,
          }
        ),
        withLambdaFunctionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_function+: converted,
          }
        ),
        withLexMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lex+: converted,
          }
        ),
        withOutputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            output+: converted,
          }
        ),
        withPromptMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prompt+: converted,
          }
        ),
        withRetrievalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retrieval+: converted,
          }
        ),
        withStorageMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            storage+: converted,
          }
        ),
      },
      input:: {
        local block = self,
        new(expression, name, type):: (
          {}
          + block.withExpression(expression)
          + block.withName(name)
          + block.withType(type)
        ),
        withCategory(value):: (
          local converted = value;
          assert std.isString(converted) : '"category" expected to be of type "string"';
          {
            category: converted,
          }
        ),
        withExpression(value):: (
          local converted = value;
          assert std.isString(converted) : '"expression" expected to be of type "string"';
          {
            expression: converted,
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
      output:: {
        local block = self,
        new(name, type):: (
          {}
          + block.withName(name)
          + block.withType(type)
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
      withConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configuration: value,
        }
      ),
      withInput(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input: value,
        }
      ),
      withOutput(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output: value,
        }
      ),
      withConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          configuration+: converted,
        }
      ),
      withInputMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input+: converted,
        }
      ),
      withOutputMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output+: converted,
        }
      ),
    },
    withConnection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection: value,
      }
    ),
    withNode(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        node: value,
      }
    ),
    withConnectionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection+: converted,
      }
    ),
    withNodeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        node+: converted,
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
  withDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition+: converted,
    }
  ),
}

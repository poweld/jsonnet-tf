{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codepipeline",
          type:: "resource",
          attributes:: ["arn", "execution_mode", "id", "name", "pipeline_type", "region", "role_arn", "tags", "tags_all", "trigger_all"],
        },
      },
    }
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withExecutionMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_mode" expected to be of type "string"';
    {
      execution_mode: converted,
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
  withPipelineType(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_type" expected to be of type "string"';
    {
      pipeline_type: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  artifact_store:: {
    local block = self,
    new(location, type):: (
      {}
      + block.withLocation(location)
      + block.withType(type)
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    encryption_key:: {
      local block = self,
      new(id, type):: (
        {}
        + block.withId(id)
        + block.withType(type)
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
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
    withEncryptionKey(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_key: value,
      }
    ),
    withEncryptionKeyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_key+: converted,
      }
    ),
  },
  stage:: {
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
    action:: {
      local block = self,
      new(category, name, owner, provider, version):: (
        {}
        + block.withCategory(category)
        + block.withName(name)
        + block.withOwner(owner)
        + block.withProvider(provider)
        + block.withVersion(version)
      ),
      withCategory(value):: (
        local converted = value;
        assert std.isString(converted) : '"category" expected to be of type "string"';
        {
          category: converted,
        }
      ),
      withConfiguration(value):: (
        local converted = value;
        assert std.isObject(converted) : '"configuration" expected to be of type "map"';
        {
          configuration: converted,
        }
      ),
      withInputArtifacts(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
        {
          input_artifacts: converted,
        }
      ),
      withInputArtifactsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
        {
          input_artifacts+: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withNamespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      withOutputArtifacts(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"output_artifacts" expected to be of type "list"';
        {
          output_artifacts: converted,
        }
      ),
      withOutputArtifactsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"output_artifacts" expected to be of type "list"';
        {
          output_artifacts+: converted,
        }
      ),
      withOwner(value):: (
        local converted = value;
        assert std.isString(converted) : '"owner" expected to be of type "string"';
        {
          owner: converted,
        }
      ),
      withProvider(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider" expected to be of type "string"';
        {
          provider: converted,
        }
      ),
      withRegion(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withRunOrder(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"run_order" expected to be of type "number"';
        {
          run_order: converted,
        }
      ),
      withTimeoutInMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
        {
          timeout_in_minutes: converted,
        }
      ),
      withVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"version" expected to be of type "string"';
        {
          version: converted,
        }
      ),
    },
    before_entry:: {
      local block = self,
      new():: (
        {}
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        withResult(value):: (
          local converted = value;
          assert std.isString(converted) : '"result" expected to be of type "string"';
          {
            result: converted,
          }
        ),
        rule:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withCommands(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands: converted,
            }
          ),
          withCommandsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands+: converted,
            }
          ),
          withConfiguration(value):: (
            local converted = value;
            assert std.isObject(converted) : '"configuration" expected to be of type "map"';
            {
              configuration: converted,
            }
          ),
          withInputArtifacts(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts: converted,
            }
          ),
          withInputArtifactsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts+: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          withRegion(value):: (
            local converted = value;
            assert std.isString(converted) : '"region" expected to be of type "string"';
            {
              region: converted,
            }
          ),
          withRoleArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"role_arn" expected to be of type "string"';
            {
              role_arn: converted,
            }
          ),
          withTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
            {
              timeout_in_minutes: converted,
            }
          ),
          rule_type_id:: {
            local block = self,
            new(category, provider):: (
              {}
              + block.withCategory(category)
              + block.withProvider(provider)
            ),
            withCategory(value):: (
              local converted = value;
              assert std.isString(converted) : '"category" expected to be of type "string"';
              {
                category: converted,
              }
            ),
            withOwner(value):: (
              local converted = value;
              assert std.isString(converted) : '"owner" expected to be of type "string"';
              {
                owner: converted,
              }
            ),
            withProvider(value):: (
              local converted = value;
              assert std.isString(converted) : '"provider" expected to be of type "string"';
              {
                provider: converted,
              }
            ),
            withVersion(value):: (
              local converted = value;
              assert std.isString(converted) : '"version" expected to be of type "string"';
              {
                version: converted,
              }
            ),
          },
          withRuleTypeId(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id: value,
            }
          ),
          withRuleTypeIdMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id+: converted,
            }
          ),
        },
        withRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule: value,
          }
        ),
        withRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule+: converted,
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
    on_failure:: {
      local block = self,
      new():: (
        {}
      ),
      withResult(value):: (
        local converted = value;
        assert std.isString(converted) : '"result" expected to be of type "string"';
        {
          result: converted,
        }
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        withResult(value):: (
          local converted = value;
          assert std.isString(converted) : '"result" expected to be of type "string"';
          {
            result: converted,
          }
        ),
        rule:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withCommands(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands: converted,
            }
          ),
          withCommandsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands+: converted,
            }
          ),
          withConfiguration(value):: (
            local converted = value;
            assert std.isObject(converted) : '"configuration" expected to be of type "map"';
            {
              configuration: converted,
            }
          ),
          withInputArtifacts(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts: converted,
            }
          ),
          withInputArtifactsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts+: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          withRegion(value):: (
            local converted = value;
            assert std.isString(converted) : '"region" expected to be of type "string"';
            {
              region: converted,
            }
          ),
          withRoleArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"role_arn" expected to be of type "string"';
            {
              role_arn: converted,
            }
          ),
          withTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
            {
              timeout_in_minutes: converted,
            }
          ),
          rule_type_id:: {
            local block = self,
            new(category, provider):: (
              {}
              + block.withCategory(category)
              + block.withProvider(provider)
            ),
            withCategory(value):: (
              local converted = value;
              assert std.isString(converted) : '"category" expected to be of type "string"';
              {
                category: converted,
              }
            ),
            withOwner(value):: (
              local converted = value;
              assert std.isString(converted) : '"owner" expected to be of type "string"';
              {
                owner: converted,
              }
            ),
            withProvider(value):: (
              local converted = value;
              assert std.isString(converted) : '"provider" expected to be of type "string"';
              {
                provider: converted,
              }
            ),
            withVersion(value):: (
              local converted = value;
              assert std.isString(converted) : '"version" expected to be of type "string"';
              {
                version: converted,
              }
            ),
          },
          withRuleTypeId(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id: value,
            }
          ),
          withRuleTypeIdMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id+: converted,
            }
          ),
        },
        withRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule: value,
          }
        ),
        withRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule+: converted,
          }
        ),
      },
      retry_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withRetryMode(value):: (
          local converted = value;
          assert std.isString(converted) : '"retry_mode" expected to be of type "string"';
          {
            retry_mode: converted,
          }
        ),
      },
      withCondition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition: value,
        }
      ),
      withRetryConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_configuration: value,
        }
      ),
      withConditionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          condition+: converted,
        }
      ),
      withRetryConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_configuration+: converted,
        }
      ),
    },
    on_success:: {
      local block = self,
      new():: (
        {}
      ),
      condition:: {
        local block = self,
        new():: (
          {}
        ),
        withResult(value):: (
          local converted = value;
          assert std.isString(converted) : '"result" expected to be of type "string"';
          {
            result: converted,
          }
        ),
        rule:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withCommands(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands: converted,
            }
          ),
          withCommandsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"commands" expected to be of type "list"';
            {
              commands+: converted,
            }
          ),
          withConfiguration(value):: (
            local converted = value;
            assert std.isObject(converted) : '"configuration" expected to be of type "map"';
            {
              configuration: converted,
            }
          ),
          withInputArtifacts(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts: converted,
            }
          ),
          withInputArtifactsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"input_artifacts" expected to be of type "list"';
            {
              input_artifacts+: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          withRegion(value):: (
            local converted = value;
            assert std.isString(converted) : '"region" expected to be of type "string"';
            {
              region: converted,
            }
          ),
          withRoleArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"role_arn" expected to be of type "string"';
            {
              role_arn: converted,
            }
          ),
          withTimeoutInMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
            {
              timeout_in_minutes: converted,
            }
          ),
          rule_type_id:: {
            local block = self,
            new(category, provider):: (
              {}
              + block.withCategory(category)
              + block.withProvider(provider)
            ),
            withCategory(value):: (
              local converted = value;
              assert std.isString(converted) : '"category" expected to be of type "string"';
              {
                category: converted,
              }
            ),
            withOwner(value):: (
              local converted = value;
              assert std.isString(converted) : '"owner" expected to be of type "string"';
              {
                owner: converted,
              }
            ),
            withProvider(value):: (
              local converted = value;
              assert std.isString(converted) : '"provider" expected to be of type "string"';
              {
                provider: converted,
              }
            ),
            withVersion(value):: (
              local converted = value;
              assert std.isString(converted) : '"version" expected to be of type "string"';
              {
                version: converted,
              }
            ),
          },
          withRuleTypeId(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id: value,
            }
          ),
          withRuleTypeIdMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_type_id+: converted,
            }
          ),
        },
        withRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule: value,
          }
        ),
        withRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule+: converted,
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
    withAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    withBeforeEntry(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        before_entry: value,
      }
    ),
    withOnFailure(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure: value,
      }
    ),
    withOnSuccess(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_success: value,
      }
    ),
    withActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    withBeforeEntryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        before_entry+: converted,
      }
    ),
    withOnFailureMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure+: converted,
      }
    ),
    withOnSuccessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_success+: converted,
      }
    ),
  },
  trigger:: {
    local block = self,
    new(providerType):: (
      {}
      + block.withProviderType(providerType)
    ),
    withProviderType(value):: (
      local converted = value;
      assert std.isString(converted) : '"provider_type" expected to be of type "string"';
      {
        provider_type: converted,
      }
    ),
    git_configuration:: {
      local block = self,
      new(sourceActionName):: (
        {}
        + block.withSourceActionName(sourceActionName)
      ),
      withSourceActionName(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_action_name" expected to be of type "string"';
        {
          source_action_name: converted,
        }
      ),
      pull_request:: {
        local block = self,
        new():: (
          {}
        ),
        withEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"events" expected to be of type "list"';
          {
            events: converted,
          }
        ),
        withEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"events" expected to be of type "list"';
          {
            events+: converted,
          }
        ),
        branches:: {
          local block = self,
          new():: (
            {}
          ),
          withExcludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          withExcludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          withIncludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          withIncludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        file_paths:: {
          local block = self,
          new():: (
            {}
          ),
          withExcludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          withExcludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          withIncludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          withIncludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        withBranches(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches: value,
          }
        ),
        withFilePaths(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths: value,
          }
        ),
        withBranchesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches+: converted,
          }
        ),
        withFilePathsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths+: converted,
          }
        ),
      },
      push:: {
        local block = self,
        new():: (
          {}
        ),
        branches:: {
          local block = self,
          new():: (
            {}
          ),
          withExcludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          withExcludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          withIncludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          withIncludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        file_paths:: {
          local block = self,
          new():: (
            {}
          ),
          withExcludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          withExcludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          withIncludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          withIncludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        tags:: {
          local block = self,
          new():: (
            {}
          ),
          withExcludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes: converted,
            }
          ),
          withExcludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"excludes" expected to be of type "list"';
            {
              excludes+: converted,
            }
          ),
          withIncludes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes: converted,
            }
          ),
          withIncludesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"includes" expected to be of type "list"';
            {
              includes+: converted,
            }
          ),
        },
        withBranches(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches: value,
          }
        ),
        withFilePaths(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths: value,
          }
        ),
        withTags(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags: value,
          }
        ),
        withBranchesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            branches+: converted,
          }
        ),
        withFilePathsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file_paths+: converted,
          }
        ),
        withTagsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags+: converted,
          }
        ),
      },
      withPullRequest(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pull_request: value,
        }
      ),
      withPush(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          push: value,
        }
      ),
      withPullRequestMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pull_request+: converted,
        }
      ),
      withPushMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          push+: converted,
        }
      ),
    },
    withGitConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_configuration: value,
      }
    ),
    withGitConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_configuration+: converted,
      }
    ),
  },
  variable:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withDefaultValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
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
  },
  withArtifactStore(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_store: value,
    }
  ),
  withStage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage: value,
    }
  ),
  withTrigger(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger: value,
    }
  ),
  withVariable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variable: value,
    }
  ),
  withArtifactStoreMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_store+: converted,
    }
  ),
  withStageMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage+: converted,
    }
  ),
  withTriggerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger+: converted,
    }
  ),
  withVariableMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      variable+: converted,
    }
  ),
}

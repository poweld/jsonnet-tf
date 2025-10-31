{
  local block = self,
  new(terraformName, actionGroupName, agentId, agentVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_agent_action_group",
          type:: "resource",
          attributes:: ["action_group_id", "action_group_name", "action_group_state", "agent_id", "agent_version", "description", "id", "parent_action_group_signature", "prepare_agent", "region", "skip_resource_in_use_check"],
        },
      },
    }
    + block.withActionGroupName(actionGroupName)
    + block.withAgentId(agentId)
    + block.withAgentVersion(agentVersion)
  ),
  withActionGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_group_name" expected to be of type "string"';
    {
      action_group_name: converted,
    }
  ),
  withActionGroupState(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_group_state" expected to be of type "string"';
    {
      action_group_state: converted,
    }
  ),
  withAgentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_id" expected to be of type "string"';
    {
      agent_id: converted,
    }
  ),
  withAgentVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_version" expected to be of type "string"';
    {
      agent_version: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withParentActionGroupSignature(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_action_group_signature" expected to be of type "string"';
    {
      parent_action_group_signature: converted,
    }
  ),
  withPrepareAgent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"prepare_agent" expected to be of type "bool"';
    {
      prepare_agent: converted,
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
  withSkipResourceInUseCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_resource_in_use_check" expected to be of type "bool"';
    {
      skip_resource_in_use_check: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  action_group_executor:: {
    local block = self,
    new():: (
      {}
    ),
    withCustomControl(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_control" expected to be of type "string"';
      {
        custom_control: converted,
      }
    ),
    withLambda(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda" expected to be of type "string"';
      {
        lambda: converted,
      }
    ),
  },
  api_schema:: {
    local block = self,
    new():: (
      {}
    ),
    withPayload(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload" expected to be of type "string"';
      {
        payload: converted,
      }
    ),
    s3:: {
      local block = self,
      new():: (
        {}
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
  function_schema:: {
    local block = self,
    new():: (
      {}
    ),
    member_functions:: {
      local block = self,
      new():: (
        {}
      ),
      functions:: {
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
        parameters:: {
          local block = self,
          new(mapBlockKey, type):: (
            {}
            + block.withMapBlockKey(mapBlockKey)
            + block.withType(type)
          ),
          withDescription(value):: (
            local converted = value;
            assert std.isString(converted) : '"description" expected to be of type "string"';
            {
              description: converted,
            }
          ),
          withMapBlockKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          withRequired(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
            {
              required: converted,
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
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withFunctions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          functions: value,
        }
      ),
      withFunctionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          functions+: converted,
        }
      ),
    },
    withMemberFunctions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member_functions: value,
      }
    ),
    withMemberFunctionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member_functions+: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withActionGroupExecutor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_group_executor: value,
    }
  ),
  withApiSchema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_schema: value,
    }
  ),
  withFunctionSchema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      function_schema: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withActionGroupExecutorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_group_executor+: converted,
    }
  ),
  withApiSchemaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_schema+: converted,
    }
  ),
  withFunctionSchemaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      function_schema+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_config_rule",
          type:: "resource",
          attributes:: ["arn", "description", "id", "input_parameters", "maximum_execution_frequency", "name", "region", "rule_id", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
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
  withInputParameters(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_parameters" expected to be of type "string"';
    {
      input_parameters: converted,
    }
  ),
  withMaximumExecutionFrequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"maximum_execution_frequency" expected to be of type "string"';
    {
      maximum_execution_frequency: converted,
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
  evaluation_mode:: {
    local block = self,
    new():: (
      {}
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  scope:: {
    local block = self,
    new():: (
      {}
    ),
    withComplianceResourceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"compliance_resource_id" expected to be of type "string"';
      {
        compliance_resource_id: converted,
      }
    ),
    withComplianceResourceTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_types" expected to be of type "set"';
      {
        compliance_resource_types: converted,
      }
    ),
    withComplianceResourceTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"compliance_resource_types" expected to be of type "set"';
      {
        compliance_resource_types+: converted,
      }
    ),
    withTagKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"tag_key" expected to be of type "string"';
      {
        tag_key: converted,
      }
    ),
    withTagValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"tag_value" expected to be of type "string"';
      {
        tag_value: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(owner):: (
      {}
      + block.withOwner(owner)
    ),
    withOwner(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner" expected to be of type "string"';
      {
        owner: converted,
      }
    ),
    withSourceIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identifier" expected to be of type "string"';
      {
        source_identifier: converted,
      }
    ),
    custom_policy_details:: {
      local block = self,
      new(policyRuntime, policyText):: (
        {}
        + block.withPolicyRuntime(policyRuntime)
        + block.withPolicyText(policyText)
      ),
      withEnableDebugLogDelivery(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_debug_log_delivery" expected to be of type "bool"';
        {
          enable_debug_log_delivery: converted,
        }
      ),
      withPolicyRuntime(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_runtime" expected to be of type "string"';
        {
          policy_runtime: converted,
        }
      ),
      withPolicyText(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_text" expected to be of type "string"';
        {
          policy_text: converted,
        }
      ),
    },
    source_detail:: {
      local block = self,
      new():: (
        {}
      ),
      withEventSource(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_source" expected to be of type "string"';
        {
          event_source: converted,
        }
      ),
      withMaximumExecutionFrequency(value):: (
        local converted = value;
        assert std.isString(converted) : '"maximum_execution_frequency" expected to be of type "string"';
        {
          maximum_execution_frequency: converted,
        }
      ),
      withMessageType(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_type" expected to be of type "string"';
        {
          message_type: converted,
        }
      ),
    },
    withCustomPolicyDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_policy_details: value,
      }
    ),
    withSourceDetail(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_detail: value,
      }
    ),
    withCustomPolicyDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_policy_details+: converted,
      }
    ),
    withSourceDetailMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_detail+: converted,
      }
    ),
  },
  withEvaluationMode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      evaluation_mode: value,
    }
  ),
  withScope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withEvaluationModeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      evaluation_mode+: converted,
    }
  ),
  withScopeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}

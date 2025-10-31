{
  local block = self,
  new(terraformName, lambdaFunctionArn, name, triggerTypes):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_organization_custom_rule",
          type:: "resource",
          attributes:: ["arn", "description", "excluded_accounts", "id", "input_parameters", "lambda_function_arn", "maximum_execution_frequency", "name", "region", "resource_id_scope", "resource_types_scope", "tag_key_scope", "tag_value_scope", "trigger_types"],
        },
      },
    }
    + block.withLambdaFunctionArn(lambdaFunctionArn)
    + block.withName(name)
    + block.withTriggerTypes(triggerTypes)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExcludedAccounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts: converted,
    }
  ),
  withExcludedAccountsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts+: converted,
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
  withLambdaFunctionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lambda_function_arn" expected to be of type "string"';
    {
      lambda_function_arn: converted,
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
  withResourceIdScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id_scope" expected to be of type "string"';
    {
      resource_id_scope: converted,
    }
  ),
  withResourceTypesScope(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types_scope" expected to be of type "set"';
    {
      resource_types_scope: converted,
    }
  ),
  withResourceTypesScopeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types_scope" expected to be of type "set"';
    {
      resource_types_scope+: converted,
    }
  ),
  withTagKeyScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_key_scope" expected to be of type "string"';
    {
      tag_key_scope: converted,
    }
  ),
  withTagValueScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_value_scope" expected to be of type "string"';
    {
      tag_value_scope: converted,
    }
  ),
  withTriggerTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_types" expected to be of type "set"';
    {
      trigger_types: converted,
    }
  ),
  withTriggerTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_types" expected to be of type "set"';
    {
      trigger_types+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

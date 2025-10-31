{
  local block = self,
  new(terraformName, actionNames, policySourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_principal_policy_simulation",
          type:: "data",
          attributes:: ["action_names", "additional_policies_json", "all_allowed", "caller_arn", "id", "permissions_boundary_policies_json", "policy_source_arn", "resource_arns", "resource_handling_option", "resource_owner_account_id", "resource_policy_json", "results"],
        },
      },
    }
    + block.withActionNames(actionNames)
    + block.withPolicySourceArn(policySourceArn)
  ),
  "#withActionNames":: "One or more names of actions, like 'iam:CreateUser', that should be included in the simulation.",
  withActionNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"action_names" expected to be of type "set"';
    {
      action_names: converted,
    }
  ),
  "#withActionNamesMixin":: "One or more names of actions, like 'iam:CreateUser', that should be included in the simulation.",
  withActionNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"action_names" expected to be of type "set"';
    {
      action_names+: converted,
    }
  ),
  "#withAdditionalPoliciesJson":: "Additional principal-based policies to use in the simulation.",
  withAdditionalPoliciesJson(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_policies_json" expected to be of type "set"';
    {
      additional_policies_json: converted,
    }
  ),
  "#withAdditionalPoliciesJsonMixin":: "Additional principal-based policies to use in the simulation.",
  withAdditionalPoliciesJsonMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_policies_json" expected to be of type "set"';
    {
      additional_policies_json+: converted,
    }
  ),
  "#withCallerArn":: "ARN of a user to use as the caller of the simulated requests. If not specified, defaults to the principal specified in policy_source_arn, if it is a user ARN.",
  withCallerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"caller_arn" expected to be of type "string"';
    {
      caller_arn: converted,
    }
  ),
  "#withPermissionsBoundaryPoliciesJson":: "Additional permission boundary policies to use in the simulation.",
  withPermissionsBoundaryPoliciesJson(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions_boundary_policies_json" expected to be of type "set"';
    {
      permissions_boundary_policies_json: converted,
    }
  ),
  "#withPermissionsBoundaryPoliciesJsonMixin":: "Additional permission boundary policies to use in the simulation.",
  withPermissionsBoundaryPoliciesJsonMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions_boundary_policies_json" expected to be of type "set"';
    {
      permissions_boundary_policies_json+: converted,
    }
  ),
  "#withPolicySourceArn":: "ARN of the principal (e.g. user, role) whose existing configured access policies will be used as the basis for the simulation. If you specify a role ARN here, you can also set caller_arn to simulate a particular user acting with the given role.",
  withPolicySourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_source_arn" expected to be of type "string"';
    {
      policy_source_arn: converted,
    }
  ),
  "#withResourceArns":: "ARNs of specific resources to use as the targets of the specified actions during simulation. If not specified, the simulator assumes '*' which represents general access across all resources.",
  withResourceArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
    {
      resource_arns: converted,
    }
  ),
  "#withResourceArnsMixin":: "ARNs of specific resources to use as the targets of the specified actions during simulation. If not specified, the simulator assumes '*' which represents general access across all resources.",
  withResourceArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
    {
      resource_arns+: converted,
    }
  ),
  "#withResourceHandlingOption":: "Specifies the type of simulation to run. Some API operations need a particular resource handling option in order to produce a correct reesult.",
  withResourceHandlingOption(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_handling_option" expected to be of type "string"';
    {
      resource_handling_option: converted,
    }
  ),
  "#withResourceOwnerAccountId":: "An AWS account ID to use as the simulated owner for any resource whose ARN does not include a specific owner account ID. Defaults to the account given as part of caller_arn.",
  withResourceOwnerAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_owner_account_id" expected to be of type "string"';
    {
      resource_owner_account_id: converted,
    }
  ),
  "#withResourcePolicyJson":: "A resource policy to associate with all of the target resources for simulation purposes. The policy simulator does not automatically retrieve resource-level policies, so if a resource policy is crucial to your test then you must specify here the same policy document associated with your target resource(s).",
  withResourcePolicyJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_policy_json" expected to be of type "string"';
    {
      resource_policy_json: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  context:: {
    local block = self,
    new(key, type, values):: (
      {}
      + block.withKey(key)
      + block.withType(type)
      + block.withValues(values)
    ),
    "#withKey":: "The key name of the context entry, such as 'aws:CurrentTime'.",
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    "#withType":: "The type that the simulator should use to interpret the strings given in argument 'values'.",
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    "#withValues":: "One or more values to assign to the context key, given as a string in a syntax appropriate for the selected value type.",
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    "#withValuesMixin":: "One or more values to assign to the context key, given as a string in a syntax appropriate for the selected value type.",
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  withContext(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      context: value,
    }
  ),
  withContextMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      context+: converted,
    }
  ),
}

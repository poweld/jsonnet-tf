{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudformation_stack_set",
          type:: "resource",
          attributes:: ["administration_role_arn", "arn", "call_as", "capabilities", "description", "execution_role_name", "id", "name", "parameters", "permission_model", "region", "stack_set_id", "tags", "tags_all", "template_body", "template_url"],
        },
      },
    }
    + block.withName(name)
  ),
  withAdministrationRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"administration_role_arn" expected to be of type "string"';
    {
      administration_role_arn: converted,
    }
  ),
  withCallAs(value):: (
    local converted = value;
    assert std.isString(converted) : '"call_as" expected to be of type "string"';
    {
      call_as: converted,
    }
  ),
  withCapabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capabilities" expected to be of type "set"';
    {
      capabilities: converted,
    }
  ),
  withCapabilitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capabilities" expected to be of type "set"';
    {
      capabilities+: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExecutionRoleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_name" expected to be of type "string"';
    {
      execution_role_name: converted,
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
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  withPermissionModel(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission_model" expected to be of type "string"';
    {
      permission_model: converted,
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
  withTemplateBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_body" expected to be of type "string"';
    {
      template_body: converted,
    }
  ),
  withTemplateUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_url" expected to be of type "string"';
    {
      template_url: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auto_deployment:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withRetainStacksOnAccountRemoval(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"retain_stacks_on_account_removal" expected to be of type "bool"';
      {
        retain_stacks_on_account_removal: converted,
      }
    ),
  },
  managed_execution:: {
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
  },
  operation_preferences:: {
    local block = self,
    new():: (
      {}
    ),
    withFailureToleranceCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_tolerance_count" expected to be of type "number"';
      {
        failure_tolerance_count: converted,
      }
    ),
    withFailureTolerancePercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_tolerance_percentage" expected to be of type "number"';
      {
        failure_tolerance_percentage: converted,
      }
    ),
    withMaxConcurrentCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_count" expected to be of type "number"';
      {
        max_concurrent_count: converted,
      }
    ),
    withMaxConcurrentPercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_percentage" expected to be of type "number"';
      {
        max_concurrent_percentage: converted,
      }
    ),
    withRegionConcurrencyType(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_concurrency_type" expected to be of type "string"';
      {
        region_concurrency_type: converted,
      }
    ),
    withRegionOrder(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"region_order" expected to be of type "list"';
      {
        region_order: converted,
      }
    ),
    withRegionOrderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"region_order" expected to be of type "list"';
      {
        region_order+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAutoDeployment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_deployment: value,
    }
  ),
  withManagedExecution(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      managed_execution: value,
    }
  ),
  withOperationPreferences(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operation_preferences: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAutoDeploymentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_deployment+: converted,
    }
  ),
  withManagedExecutionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      managed_execution+: converted,
    }
  ),
  withOperationPreferencesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operation_preferences+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, stackSetName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudformation_stack_instances",
          type:: "resource",
          attributes:: ["accounts", "call_as", "id", "parameter_overrides", "region", "regions", "retain_stacks", "stack_instance_summaries", "stack_set_id", "stack_set_name"],
        },
      },
    }
    + block.withStackSetName(stackSetName)
  ),
  withAccounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
    {
      accounts: converted,
    }
  ),
  withAccountsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
    {
      accounts+: converted,
    }
  ),
  withCallAs(value):: (
    local converted = value;
    assert std.isString(converted) : '"call_as" expected to be of type "string"';
    {
      call_as: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withParameterOverrides(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameter_overrides" expected to be of type "map"';
    {
      parameter_overrides: converted,
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
  withRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions: converted,
    }
  ),
  withRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions+: converted,
    }
  ),
  withRetainStacks(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_stacks" expected to be of type "bool"';
    {
      retain_stacks: converted,
    }
  ),
  withStackSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_set_name" expected to be of type "string"';
    {
      stack_set_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  deployment_targets:: {
    local block = self,
    new():: (
      {}
    ),
    withAccountFilterType(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_filter_type" expected to be of type "string"';
      {
        account_filter_type: converted,
      }
    ),
    withAccounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts: converted,
      }
    ),
    withAccountsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts+: converted,
      }
    ),
    withAccountsUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"accounts_url" expected to be of type "string"';
      {
        accounts_url: converted,
      }
    ),
    withOrganizationalUnitIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_ids" expected to be of type "set"';
      {
        organizational_unit_ids: converted,
      }
    ),
    withOrganizationalUnitIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_ids" expected to be of type "set"';
      {
        organizational_unit_ids+: converted,
      }
    ),
  },
  operation_preferences:: {
    local block = self,
    new():: (
      {}
    ),
    withConcurrencyMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"concurrency_mode" expected to be of type "string"';
      {
        concurrency_mode: converted,
      }
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
  withDeploymentTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_targets: value,
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
  withDeploymentTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_targets+: converted,
    }
  ),
  withOperationPreferencesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operation_preferences+: converted,
    }
  ),
}

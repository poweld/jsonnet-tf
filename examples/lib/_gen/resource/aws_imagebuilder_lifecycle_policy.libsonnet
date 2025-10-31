{
  local block = self,
  new(terraformName, executionRole, name, resourceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_imagebuilder_lifecycle_policy",
          type:: "resource",
          attributes:: ["arn", "description", "execution_role", "id", "name", "region", "resource_type", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withExecutionRole(executionRole)
    + block.withName(name)
    + block.withResourceType(resourceType)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExecutionRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role" expected to be of type "string"';
    {
      execution_role: converted,
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
  withResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  policy_detail:: {
    local block = self,
    new():: (
      {}
    ),
    action:: {
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
      include_resources:: {
        local block = self,
        new():: (
          {}
        ),
        withAmis(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"amis" expected to be of type "bool"';
          {
            amis: converted,
          }
        ),
        withContainers(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"containers" expected to be of type "bool"';
          {
            containers: converted,
          }
        ),
        withSnapshots(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"snapshots" expected to be of type "bool"';
          {
            snapshots: converted,
          }
        ),
      },
      withIncludeResources(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          include_resources: value,
        }
      ),
      withIncludeResourcesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          include_resources+: converted,
        }
      ),
    },
    exclusion_rules:: {
      local block = self,
      new():: (
        {}
      ),
      withTagMap(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tag_map" expected to be of type "map"';
        {
          tag_map: converted,
        }
      ),
      amis:: {
        local block = self,
        new():: (
          {}
        ),
        withIsPublic(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_public" expected to be of type "bool"';
          {
            is_public: converted,
          }
        ),
        withRegions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"regions" expected to be of type "list"';
          {
            regions: converted,
          }
        ),
        withRegionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"regions" expected to be of type "list"';
          {
            regions+: converted,
          }
        ),
        withSharedAccounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"shared_accounts" expected to be of type "list"';
          {
            shared_accounts: converted,
          }
        ),
        withSharedAccountsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"shared_accounts" expected to be of type "list"';
          {
            shared_accounts+: converted,
          }
        ),
        withTagMap(value):: (
          local converted = value;
          assert std.isObject(converted) : '"tag_map" expected to be of type "map"';
          {
            tag_map: converted,
          }
        ),
        last_launched:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withLastLaunched(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            last_launched: value,
          }
        ),
        withLastLaunchedMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            last_launched+: converted,
          }
        ),
      },
      withAmis(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amis: value,
        }
      ),
      withAmisMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amis+: converted,
        }
      ),
    },
    filter:: {
      local block = self,
      new(type, value):: (
        {}
        + block.withType(type)
        + block.withValue(value)
      ),
      withRetainAtLeast(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"retain_at_least" expected to be of type "number"';
        {
          retain_at_least: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      withUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    withAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    withExclusionRules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_rules: value,
      }
    ),
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    withExclusionRulesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_rules+: converted,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  resource_selection:: {
    local block = self,
    new():: (
      {}
    ),
    withTagMap(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tag_map" expected to be of type "map"';
      {
        tag_map: converted,
      }
    ),
    recipe:: {
      local block = self,
      new(name, semanticVersion):: (
        {}
        + block.withName(name)
        + block.withSemanticVersion(semanticVersion)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withSemanticVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"semantic_version" expected to be of type "string"';
        {
          semantic_version: converted,
        }
      ),
    },
    withRecipe(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recipe: value,
      }
    ),
    withRecipeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recipe+: converted,
      }
    ),
  },
  withPolicyDetail(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_detail: value,
    }
  ),
  withResourceSelection(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_selection: value,
    }
  ),
  withPolicyDetailMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_detail+: converted,
    }
  ),
  withResourceSelectionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_selection+: converted,
    }
  ),
}

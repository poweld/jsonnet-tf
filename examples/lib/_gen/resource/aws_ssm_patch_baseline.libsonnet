{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_patch_baseline",
          type:: "resource",
          attributes:: ["approved_patches", "approved_patches_compliance_level", "approved_patches_enable_non_security", "arn", "available_security_updates_compliance_status", "description", "id", "json", "name", "operating_system", "region", "rejected_patches", "rejected_patches_action", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withApprovedPatches(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"approved_patches" expected to be of type "set"';
    {
      approved_patches: converted,
    }
  ),
  withApprovedPatchesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"approved_patches" expected to be of type "set"';
    {
      approved_patches+: converted,
    }
  ),
  withApprovedPatchesComplianceLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"approved_patches_compliance_level" expected to be of type "string"';
    {
      approved_patches_compliance_level: converted,
    }
  ),
  withApprovedPatchesEnableNonSecurity(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"approved_patches_enable_non_security" expected to be of type "bool"';
    {
      approved_patches_enable_non_security: converted,
    }
  ),
  withAvailableSecurityUpdatesComplianceStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"available_security_updates_compliance_status" expected to be of type "string"';
    {
      available_security_updates_compliance_status: converted,
    }
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOperatingSystem(value):: (
    local converted = value;
    assert std.isString(converted) : '"operating_system" expected to be of type "string"';
    {
      operating_system: converted,
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
  withRejectedPatches(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rejected_patches" expected to be of type "set"';
    {
      rejected_patches: converted,
    }
  ),
  withRejectedPatchesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rejected_patches" expected to be of type "set"';
    {
      rejected_patches+: converted,
    }
  ),
  withRejectedPatchesAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"rejected_patches_action" expected to be of type "string"';
    {
      rejected_patches_action: converted,
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
  approval_rule:: {
    local block = self,
    new():: (
      {}
    ),
    withApproveAfterDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"approve_after_days" expected to be of type "number"';
      {
        approve_after_days: converted,
      }
    ),
    withApproveUntilDate(value):: (
      local converted = value;
      assert std.isString(converted) : '"approve_until_date" expected to be of type "string"';
      {
        approve_until_date: converted,
      }
    ),
    withComplianceLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"compliance_level" expected to be of type "string"';
      {
        compliance_level: converted,
      }
    ),
    withEnableNonSecurity(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_non_security" expected to be of type "bool"';
      {
        enable_non_security: converted,
      }
    ),
    patch_filter:: {
      local block = self,
      new(key, values):: (
        {}
        + block.withKey(key)
        + block.withValues(values)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
    },
    withPatchFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        patch_filter: value,
      }
    ),
    withPatchFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        patch_filter+: converted,
      }
    ),
  },
  global_filter:: {
    local block = self,
    new(key, values):: (
      {}
      + block.withKey(key)
      + block.withValues(values)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(configuration, name, products):: (
      {}
      + block.withConfiguration(configuration)
      + block.withName(name)
      + block.withProducts(products)
    ),
    withConfiguration(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration" expected to be of type "string"';
      {
        configuration: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withProducts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"products" expected to be of type "list"';
      {
        products: converted,
      }
    ),
    withProductsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"products" expected to be of type "list"';
      {
        products+: converted,
      }
    ),
  },
  withApprovalRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      approval_rule: value,
    }
  ),
  withGlobalFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_filter: value,
    }
  ),
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withApprovalRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      approval_rule+: converted,
    }
  ),
  withGlobalFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_filter+: converted,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}

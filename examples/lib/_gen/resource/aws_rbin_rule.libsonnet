{
  local block = self,
  new(terraformName, resourceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rbin_rule",
          type:: "resource",
          attributes:: ["arn", "description", "id", "lock_end_time", "lock_state", "region", "resource_type", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withResourceType(resourceType)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  exclude_resource_tags:: {
    local block = self,
    new(resourceTagKey):: (
      {}
      + block.withResourceTagKey(resourceTagKey)
    ),
    withResourceTagKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_key" expected to be of type "string"';
      {
        resource_tag_key: converted,
      }
    ),
    withResourceTagValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_value" expected to be of type "string"';
      {
        resource_tag_value: converted,
      }
    ),
  },
  lock_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    unlock_delay:: {
      local block = self,
      new(unlockDelayUnit, unlockDelayValue):: (
        {}
        + block.withUnlockDelayUnit(unlockDelayUnit)
        + block.withUnlockDelayValue(unlockDelayValue)
      ),
      withUnlockDelayUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unlock_delay_unit" expected to be of type "string"';
        {
          unlock_delay_unit: converted,
        }
      ),
      withUnlockDelayValue(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"unlock_delay_value" expected to be of type "number"';
        {
          unlock_delay_value: converted,
        }
      ),
    },
    withUnlockDelay(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unlock_delay: value,
      }
    ),
    withUnlockDelayMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unlock_delay+: converted,
      }
    ),
  },
  resource_tags:: {
    local block = self,
    new(resourceTagKey):: (
      {}
      + block.withResourceTagKey(resourceTagKey)
    ),
    withResourceTagKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_key" expected to be of type "string"';
      {
        resource_tag_key: converted,
      }
    ),
    withResourceTagValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_value" expected to be of type "string"';
      {
        resource_tag_value: converted,
      }
    ),
  },
  retention_period:: {
    local block = self,
    new(retentionPeriodUnit, retentionPeriodValue):: (
      {}
      + block.withRetentionPeriodUnit(retentionPeriodUnit)
      + block.withRetentionPeriodValue(retentionPeriodValue)
    ),
    withRetentionPeriodUnit(value):: (
      local converted = value;
      assert std.isString(converted) : '"retention_period_unit" expected to be of type "string"';
      {
        retention_period_unit: converted,
      }
    ),
    withRetentionPeriodValue(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retention_period_value" expected to be of type "number"';
      {
        retention_period_value: converted,
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
  withExcludeResourceTags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_resource_tags: value,
    }
  ),
  withLockConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lock_configuration: value,
    }
  ),
  withResourceTags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_tags: value,
    }
  ),
  withRetentionPeriod(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_period: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withExcludeResourceTagsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_resource_tags+: converted,
    }
  ),
  withLockConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lock_configuration+: converted,
    }
  ),
  withResourceTagsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_tags+: converted,
    }
  ),
  withRetentionPeriodMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_period+: converted,
    }
  ),
}

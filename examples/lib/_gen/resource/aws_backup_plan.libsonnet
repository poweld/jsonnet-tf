{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_plan",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withName(name)
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
  advanced_backup_setting:: {
    local block = self,
    new(backupOptions, resourceType):: (
      {}
      + block.withBackupOptions(backupOptions)
      + block.withResourceType(resourceType)
    ),
    withBackupOptions(value):: (
      local converted = value;
      assert std.isObject(converted) : '"backup_options" expected to be of type "map"';
      {
        backup_options: converted,
      }
    ),
    withResourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
  },
  rule:: {
    local block = self,
    new(ruleName, targetVaultName):: (
      {}
      + block.withRuleName(ruleName)
      + block.withTargetVaultName(targetVaultName)
    ),
    withCompletionWindow(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"completion_window" expected to be of type "number"';
      {
        completion_window: converted,
      }
    ),
    withEnableContinuousBackup(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_continuous_backup" expected to be of type "bool"';
      {
        enable_continuous_backup: converted,
      }
    ),
    withRecoveryPointTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"recovery_point_tags" expected to be of type "map"';
      {
        recovery_point_tags: converted,
      }
    ),
    withRuleName(value):: (
      local converted = value;
      assert std.isString(converted) : '"rule_name" expected to be of type "string"';
      {
        rule_name: converted,
      }
    ),
    withSchedule(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule" expected to be of type "string"';
      {
        schedule: converted,
      }
    ),
    withScheduleExpressionTimezone(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression_timezone" expected to be of type "string"';
      {
        schedule_expression_timezone: converted,
      }
    ),
    withStartWindow(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"start_window" expected to be of type "number"';
      {
        start_window: converted,
      }
    ),
    withTargetVaultName(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_vault_name" expected to be of type "string"';
      {
        target_vault_name: converted,
      }
    ),
    copy_action:: {
      local block = self,
      new(destinationVaultArn):: (
        {}
        + block.withDestinationVaultArn(destinationVaultArn)
      ),
      withDestinationVaultArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_vault_arn" expected to be of type "string"';
        {
          destination_vault_arn: converted,
        }
      ),
      lifecycle:: {
        local block = self,
        new():: (
          {}
        ),
        withColdStorageAfter(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cold_storage_after" expected to be of type "number"';
          {
            cold_storage_after: converted,
          }
        ),
        withDeleteAfter(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"delete_after" expected to be of type "number"';
          {
            delete_after: converted,
          }
        ),
        withOptInToArchiveForSupportedResources(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"opt_in_to_archive_for_supported_resources" expected to be of type "bool"';
          {
            opt_in_to_archive_for_supported_resources: converted,
          }
        ),
      },
      withLifecycle(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lifecycle: value,
        }
      ),
      withLifecycleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lifecycle+: converted,
        }
      ),
    },
    lifecycle:: {
      local block = self,
      new():: (
        {}
      ),
      withColdStorageAfter(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"cold_storage_after" expected to be of type "number"';
        {
          cold_storage_after: converted,
        }
      ),
      withDeleteAfter(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"delete_after" expected to be of type "number"';
        {
          delete_after: converted,
        }
      ),
      withOptInToArchiveForSupportedResources(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"opt_in_to_archive_for_supported_resources" expected to be of type "bool"';
        {
          opt_in_to_archive_for_supported_resources: converted,
        }
      ),
    },
    withCopyAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_action: value,
      }
    ),
    withLifecycle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle: value,
      }
    ),
    withCopyActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_action+: converted,
      }
    ),
    withLifecycleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle+: converted,
      }
    ),
  },
  withAdvancedBackupSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_backup_setting: value,
    }
  ),
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withAdvancedBackupSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_backup_setting+: converted,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}

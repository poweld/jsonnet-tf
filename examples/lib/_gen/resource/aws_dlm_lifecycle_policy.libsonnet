{
  local block = self,
  new(terraformName, description, executionRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dlm_lifecycle_policy",
          type:: "resource",
          attributes:: ["arn", "default_policy", "description", "execution_role_arn", "id", "region", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withDescription(description)
    + block.withExecutionRoleArn(executionRoleArn)
  ),
  withDefaultPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_policy" expected to be of type "string"';
    {
      default_policy: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  policy_details:: {
    local block = self,
    new():: (
      {}
    ),
    withCopyTags(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"copy_tags" expected to be of type "bool"';
      {
        copy_tags: converted,
      }
    ),
    withCreateInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"create_interval" expected to be of type "number"';
      {
        create_interval: converted,
      }
    ),
    withExtendDeletion(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"extend_deletion" expected to be of type "bool"';
      {
        extend_deletion: converted,
      }
    ),
    withPolicyLanguage(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy_language" expected to be of type "string"';
      {
        policy_language: converted,
      }
    ),
    withPolicyType(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy_type" expected to be of type "string"';
      {
        policy_type: converted,
      }
    ),
    withResourceLocations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_locations" expected to be of type "list"';
      {
        resource_locations: converted,
      }
    ),
    withResourceLocationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_locations" expected to be of type "list"';
      {
        resource_locations+: converted,
      }
    ),
    withResourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    withResourceTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
      {
        resource_types: converted,
      }
    ),
    withResourceTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
      {
        resource_types+: converted,
      }
    ),
    withRetainInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retain_interval" expected to be of type "number"';
      {
        retain_interval: converted,
      }
    ),
    withTargetTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"target_tags" expected to be of type "map"';
      {
        target_tags: converted,
      }
    ),
    action:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      cross_region_copy:: {
        local block = self,
        new(target):: (
          {}
          + block.withTarget(target)
        ),
        withTarget(value):: (
          local converted = value;
          assert std.isString(converted) : '"target" expected to be of type "string"';
          {
            target: converted,
          }
        ),
        encryption_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          withCmkArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"cmk_arn" expected to be of type "string"';
            {
              cmk_arn: converted,
            }
          ),
          withEncrypted(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
            {
              encrypted: converted,
            }
          ),
        },
        retain_rule:: {
          local block = self,
          new(interval, intervalUnit):: (
            {}
            + block.withInterval(interval)
            + block.withIntervalUnit(intervalUnit)
          ),
          withInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"interval" expected to be of type "number"';
            {
              interval: converted,
            }
          ),
          withIntervalUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
            {
              interval_unit: converted,
            }
          ),
        },
        withEncryptionConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption_configuration: value,
          }
        ),
        withRetainRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule: value,
          }
        ),
        withEncryptionConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption_configuration+: converted,
          }
        ),
        withRetainRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule+: converted,
          }
        ),
      },
      withCrossRegionCopy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy: value,
        }
      ),
      withCrossRegionCopyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy+: converted,
        }
      ),
    },
    event_source:: {
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
      parameters:: {
        local block = self,
        new(descriptionRegex, eventType, snapshotOwner):: (
          {}
          + block.withDescriptionRegex(descriptionRegex)
          + block.withEventType(eventType)
          + block.withSnapshotOwner(snapshotOwner)
        ),
        withDescriptionRegex(value):: (
          local converted = value;
          assert std.isString(converted) : '"description_regex" expected to be of type "string"';
          {
            description_regex: converted,
          }
        ),
        withEventType(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_type" expected to be of type "string"';
          {
            event_type: converted,
          }
        ),
        withSnapshotOwner(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_owner" expected to be of type "set"';
          {
            snapshot_owner: converted,
          }
        ),
        withSnapshotOwnerMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_owner" expected to be of type "set"';
          {
            snapshot_owner+: converted,
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
    exclusions:: {
      local block = self,
      new():: (
        {}
      ),
      withExcludeBootVolumes(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"exclude_boot_volumes" expected to be of type "bool"';
        {
          exclude_boot_volumes: converted,
        }
      ),
      withExcludeTags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"exclude_tags" expected to be of type "map"';
        {
          exclude_tags: converted,
        }
      ),
      withExcludeVolumeTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"exclude_volume_types" expected to be of type "list"';
        {
          exclude_volume_types: converted,
        }
      ),
      withExcludeVolumeTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"exclude_volume_types" expected to be of type "list"';
        {
          exclude_volume_types+: converted,
        }
      ),
    },
    parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withExcludeBootVolume(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"exclude_boot_volume" expected to be of type "bool"';
        {
          exclude_boot_volume: converted,
        }
      ),
      withNoReboot(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"no_reboot" expected to be of type "bool"';
        {
          no_reboot: converted,
        }
      ),
    },
    schedule:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withCopyTags(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"copy_tags" expected to be of type "bool"';
        {
          copy_tags: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withTagsToAdd(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags_to_add" expected to be of type "map"';
        {
          tags_to_add: converted,
        }
      ),
      withVariableTags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"variable_tags" expected to be of type "map"';
        {
          variable_tags: converted,
        }
      ),
      archive_rule:: {
        local block = self,
        new():: (
          {}
        ),
        archive_retain_rule:: {
          local block = self,
          new():: (
            {}
          ),
          retention_archive_tier:: {
            local block = self,
            new():: (
              {}
            ),
            withCount(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"count" expected to be of type "number"';
              {
                count: converted,
              }
            ),
            withInterval(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"interval" expected to be of type "number"';
              {
                interval: converted,
              }
            ),
            withIntervalUnit(value):: (
              local converted = value;
              assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
              {
                interval_unit: converted,
              }
            ),
          },
          withRetentionArchiveTier(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              retention_archive_tier: value,
            }
          ),
          withRetentionArchiveTierMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              retention_archive_tier+: converted,
            }
          ),
        },
        withArchiveRetainRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            archive_retain_rule: value,
          }
        ),
        withArchiveRetainRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            archive_retain_rule+: converted,
          }
        ),
      },
      create_rule:: {
        local block = self,
        new():: (
          {}
        ),
        withCronExpression(value):: (
          local converted = value;
          assert std.isString(converted) : '"cron_expression" expected to be of type "string"';
          {
            cron_expression: converted,
          }
        ),
        withInterval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        withIntervalUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
        withLocation(value):: (
          local converted = value;
          assert std.isString(converted) : '"location" expected to be of type "string"';
          {
            location: converted,
          }
        ),
        withTimes(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"times" expected to be of type "list"';
          {
            times: converted,
          }
        ),
        withTimesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"times" expected to be of type "list"';
          {
            times+: converted,
          }
        ),
        scripts:: {
          local block = self,
          new(executionHandler):: (
            {}
            + block.withExecutionHandler(executionHandler)
          ),
          withExecuteOperationOnScriptFailure(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"execute_operation_on_script_failure" expected to be of type "bool"';
            {
              execute_operation_on_script_failure: converted,
            }
          ),
          withExecutionHandler(value):: (
            local converted = value;
            assert std.isString(converted) : '"execution_handler" expected to be of type "string"';
            {
              execution_handler: converted,
            }
          ),
          withExecutionHandlerService(value):: (
            local converted = value;
            assert std.isString(converted) : '"execution_handler_service" expected to be of type "string"';
            {
              execution_handler_service: converted,
            }
          ),
          withExecutionTimeout(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"execution_timeout" expected to be of type "number"';
            {
              execution_timeout: converted,
            }
          ),
          withMaximumRetryCount(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"maximum_retry_count" expected to be of type "number"';
            {
              maximum_retry_count: converted,
            }
          ),
          withStages(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"stages" expected to be of type "list"';
            {
              stages: converted,
            }
          ),
          withStagesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"stages" expected to be of type "list"';
            {
              stages+: converted,
            }
          ),
        },
        withScripts(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scripts: value,
          }
        ),
        withScriptsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            scripts+: converted,
          }
        ),
      },
      cross_region_copy_rule:: {
        local block = self,
        new(encrypted):: (
          {}
          + block.withEncrypted(encrypted)
        ),
        withCmkArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"cmk_arn" expected to be of type "string"';
          {
            cmk_arn: converted,
          }
        ),
        withCopyTags(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"copy_tags" expected to be of type "bool"';
          {
            copy_tags: converted,
          }
        ),
        withEncrypted(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
          {
            encrypted: converted,
          }
        ),
        withTarget(value):: (
          local converted = value;
          assert std.isString(converted) : '"target" expected to be of type "string"';
          {
            target: converted,
          }
        ),
        withTargetRegion(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_region" expected to be of type "string"';
          {
            target_region: converted,
          }
        ),
        deprecate_rule:: {
          local block = self,
          new(interval, intervalUnit):: (
            {}
            + block.withInterval(interval)
            + block.withIntervalUnit(intervalUnit)
          ),
          withInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"interval" expected to be of type "number"';
            {
              interval: converted,
            }
          ),
          withIntervalUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
            {
              interval_unit: converted,
            }
          ),
        },
        retain_rule:: {
          local block = self,
          new(interval, intervalUnit):: (
            {}
            + block.withInterval(interval)
            + block.withIntervalUnit(intervalUnit)
          ),
          withInterval(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"interval" expected to be of type "number"';
            {
              interval: converted,
            }
          ),
          withIntervalUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
            {
              interval_unit: converted,
            }
          ),
        },
        withDeprecateRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deprecate_rule: value,
          }
        ),
        withRetainRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule: value,
          }
        ),
        withDeprecateRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deprecate_rule+: converted,
          }
        ),
        withRetainRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            retain_rule+: converted,
          }
        ),
      },
      deprecate_rule:: {
        local block = self,
        new():: (
          {}
        ),
        withCount(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"count" expected to be of type "number"';
          {
            count: converted,
          }
        ),
        withInterval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        withIntervalUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
      },
      fast_restore_rule:: {
        local block = self,
        new(availabilityZones):: (
          {}
          + block.withAvailabilityZones(availabilityZones)
        ),
        withAvailabilityZones(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
          {
            availability_zones: converted,
          }
        ),
        withAvailabilityZonesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
          {
            availability_zones+: converted,
          }
        ),
        withCount(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"count" expected to be of type "number"';
          {
            count: converted,
          }
        ),
        withInterval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        withIntervalUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
      },
      retain_rule:: {
        local block = self,
        new():: (
          {}
        ),
        withCount(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"count" expected to be of type "number"';
          {
            count: converted,
          }
        ),
        withInterval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval" expected to be of type "number"';
          {
            interval: converted,
          }
        ),
        withIntervalUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"interval_unit" expected to be of type "string"';
          {
            interval_unit: converted,
          }
        ),
      },
      share_rule:: {
        local block = self,
        new(targetAccounts):: (
          {}
          + block.withTargetAccounts(targetAccounts)
        ),
        withTargetAccounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_accounts" expected to be of type "set"';
          {
            target_accounts: converted,
          }
        ),
        withTargetAccountsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_accounts" expected to be of type "set"';
          {
            target_accounts+: converted,
          }
        ),
        withUnshareInterval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"unshare_interval" expected to be of type "number"';
          {
            unshare_interval: converted,
          }
        ),
        withUnshareIntervalUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unshare_interval_unit" expected to be of type "string"';
          {
            unshare_interval_unit: converted,
          }
        ),
      },
      withArchiveRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          archive_rule: value,
        }
      ),
      withCreateRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_rule: value,
        }
      ),
      withCrossRegionCopyRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy_rule: value,
        }
      ),
      withDeprecateRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deprecate_rule: value,
        }
      ),
      withFastRestoreRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fast_restore_rule: value,
        }
      ),
      withRetainRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retain_rule: value,
        }
      ),
      withShareRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          share_rule: value,
        }
      ),
      withArchiveRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          archive_rule+: converted,
        }
      ),
      withCreateRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_rule+: converted,
        }
      ),
      withCrossRegionCopyRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cross_region_copy_rule+: converted,
        }
      ),
      withDeprecateRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          deprecate_rule+: converted,
        }
      ),
      withFastRestoreRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          fast_restore_rule+: converted,
        }
      ),
      withRetainRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retain_rule+: converted,
        }
      ),
      withShareRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          share_rule+: converted,
        }
      ),
    },
    withAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    withEventSource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_source: value,
      }
    ),
    withExclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusions: value,
      }
    ),
    withParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameters: value,
      }
    ),
    withSchedule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule: value,
      }
    ),
    withActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    withEventSourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        event_source+: converted,
      }
    ),
    withExclusionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusions+: converted,
      }
    ),
    withParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameters+: converted,
      }
    ),
    withScheduleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule+: converted,
      }
    ),
  },
  withPolicyDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_details: value,
    }
  ),
  withPolicyDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_details+: converted,
    }
  ),
}

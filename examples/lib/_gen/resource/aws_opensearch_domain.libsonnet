{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearch_domain",
          type:: "resource",
          attributes:: ["access_policies", "advanced_options", "arn", "dashboard_endpoint", "dashboard_endpoint_v2", "domain_endpoint_v2_hosted_zone_id", "domain_id", "domain_name", "endpoint", "endpoint_v2", "engine_version", "id", "ip_address_type", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withAccessPolicies(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_policies" expected to be of type "string"';
    {
      access_policies: converted,
    }
  ),
  withAdvancedOptions(value):: (
    local converted = value;
    assert std.isObject(converted) : '"advanced_options" expected to be of type "map"';
    {
      advanced_options: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
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
  advanced_security_options:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withAnonymousAuthEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"anonymous_auth_enabled" expected to be of type "bool"';
      {
        anonymous_auth_enabled: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withInternalUserDatabaseEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"internal_user_database_enabled" expected to be of type "bool"';
      {
        internal_user_database_enabled: converted,
      }
    ),
    master_user_options:: {
      local block = self,
      new():: (
        {}
      ),
      withMasterUserArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"master_user_arn" expected to be of type "string"';
        {
          master_user_arn: converted,
        }
      ),
      withMasterUserName(value):: (
        local converted = value;
        assert std.isString(converted) : '"master_user_name" expected to be of type "string"';
        {
          master_user_name: converted,
        }
      ),
      withMasterUserPassword(value):: (
        local converted = value;
        assert std.isString(converted) : '"master_user_password" expected to be of type "string"';
        {
          master_user_password: converted,
        }
      ),
    },
    withMasterUserOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        master_user_options: value,
      }
    ),
    withMasterUserOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        master_user_options+: converted,
      }
    ),
  },
  auto_tune_options:: {
    local block = self,
    new(desiredState):: (
      {}
      + block.withDesiredState(desiredState)
    ),
    withDesiredState(value):: (
      local converted = value;
      assert std.isString(converted) : '"desired_state" expected to be of type "string"';
      {
        desired_state: converted,
      }
    ),
    withRollbackOnDisable(value):: (
      local converted = value;
      assert std.isString(converted) : '"rollback_on_disable" expected to be of type "string"';
      {
        rollback_on_disable: converted,
      }
    ),
    withUseOffPeakWindow(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_off_peak_window" expected to be of type "bool"';
      {
        use_off_peak_window: converted,
      }
    ),
    maintenance_schedule:: {
      local block = self,
      new(cronExpressionForRecurrence, startAt):: (
        {}
        + block.withCronExpressionForRecurrence(cronExpressionForRecurrence)
        + block.withStartAt(startAt)
      ),
      withCronExpressionForRecurrence(value):: (
        local converted = value;
        assert std.isString(converted) : '"cron_expression_for_recurrence" expected to be of type "string"';
        {
          cron_expression_for_recurrence: converted,
        }
      ),
      withStartAt(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_at" expected to be of type "string"';
        {
          start_at: converted,
        }
      ),
      duration:: {
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
      withDuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          duration: value,
        }
      ),
      withDurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          duration+: converted,
        }
      ),
    },
    withMaintenanceSchedule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_schedule: value,
      }
    ),
    withMaintenanceScheduleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_schedule+: converted,
      }
    ),
  },
  cluster_config:: {
    local block = self,
    new():: (
      {}
    ),
    withDedicatedMasterCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"dedicated_master_count" expected to be of type "number"';
      {
        dedicated_master_count: converted,
      }
    ),
    withDedicatedMasterEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dedicated_master_enabled" expected to be of type "bool"';
      {
        dedicated_master_enabled: converted,
      }
    ),
    withDedicatedMasterType(value):: (
      local converted = value;
      assert std.isString(converted) : '"dedicated_master_type" expected to be of type "string"';
      {
        dedicated_master_type: converted,
      }
    ),
    withInstanceCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
      {
        instance_count: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withMultiAzWithStandbyEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"multi_az_with_standby_enabled" expected to be of type "bool"';
      {
        multi_az_with_standby_enabled: converted,
      }
    ),
    withWarmCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"warm_count" expected to be of type "number"';
      {
        warm_count: converted,
      }
    ),
    withWarmEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"warm_enabled" expected to be of type "bool"';
      {
        warm_enabled: converted,
      }
    ),
    withWarmType(value):: (
      local converted = value;
      assert std.isString(converted) : '"warm_type" expected to be of type "string"';
      {
        warm_type: converted,
      }
    ),
    withZoneAwarenessEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"zone_awareness_enabled" expected to be of type "bool"';
      {
        zone_awareness_enabled: converted,
      }
    ),
    cold_storage_options:: {
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
    },
    node_options:: {
      local block = self,
      new():: (
        {}
      ),
      withNodeType(value):: (
        local converted = value;
        assert std.isString(converted) : '"node_type" expected to be of type "string"';
        {
          node_type: converted,
        }
      ),
      node_config:: {
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
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      withNodeConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          node_config: value,
        }
      ),
      withNodeConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          node_config+: converted,
        }
      ),
    },
    zone_awareness_config:: {
      local block = self,
      new():: (
        {}
      ),
      withAvailabilityZoneCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"availability_zone_count" expected to be of type "number"';
        {
          availability_zone_count: converted,
        }
      ),
    },
    withColdStorageOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cold_storage_options: value,
      }
    ),
    withNodeOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        node_options: value,
      }
    ),
    withZoneAwarenessConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        zone_awareness_config: value,
      }
    ),
    withColdStorageOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cold_storage_options+: converted,
      }
    ),
    withNodeOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        node_options+: converted,
      }
    ),
    withZoneAwarenessConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        zone_awareness_config+: converted,
      }
    ),
  },
  cognito_options:: {
    local block = self,
    new(identityPoolId, roleArn, userPoolId):: (
      {}
      + block.withIdentityPoolId(identityPoolId)
      + block.withRoleArn(roleArn)
      + block.withUserPoolId(userPoolId)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withIdentityPoolId(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
      {
        identity_pool_id: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withUserPoolId(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
      {
        user_pool_id: converted,
      }
    ),
  },
  domain_endpoint_options:: {
    local block = self,
    new():: (
      {}
    ),
    withCustomEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_endpoint" expected to be of type "string"';
      {
        custom_endpoint: converted,
      }
    ),
    withCustomEndpointCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_endpoint_certificate_arn" expected to be of type "string"';
      {
        custom_endpoint_certificate_arn: converted,
      }
    ),
    withCustomEndpointEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"custom_endpoint_enabled" expected to be of type "bool"';
      {
        custom_endpoint_enabled: converted,
      }
    ),
    withEnforceHttps(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforce_https" expected to be of type "bool"';
      {
        enforce_https: converted,
      }
    ),
    withTlsSecurityPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_security_policy" expected to be of type "string"';
      {
        tls_security_policy: converted,
      }
    ),
  },
  ebs_options:: {
    local block = self,
    new(ebsEnabled):: (
      {}
      + block.withEbsEnabled(ebsEnabled)
    ),
    withEbsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ebs_enabled" expected to be of type "bool"';
      {
        ebs_enabled: converted,
      }
    ),
    withIops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    withThroughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
      {
        throughput: converted,
      }
    ),
    withVolumeSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
      {
        volume_size: converted,
      }
    ),
    withVolumeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_type" expected to be of type "string"';
      {
        volume_type: converted,
      }
    ),
  },
  encrypt_at_rest:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
  },
  log_publishing_options:: {
    local block = self,
    new(cloudwatchLogGroupArn, logType):: (
      {}
      + block.withCloudwatchLogGroupArn(cloudwatchLogGroupArn)
      + block.withLogType(logType)
    ),
    withCloudwatchLogGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
      {
        cloudwatch_log_group_arn: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withLogType(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_type" expected to be of type "string"';
      {
        log_type: converted,
      }
    ),
  },
  node_to_node_encryption:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  off_peak_window_options:: {
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
    off_peak_window:: {
      local block = self,
      new():: (
        {}
      ),
      window_start_time:: {
        local block = self,
        new():: (
          {}
        ),
        withHours(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"hours" expected to be of type "number"';
          {
            hours: converted,
          }
        ),
        withMinutes(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
          {
            minutes: converted,
          }
        ),
      },
      withWindowStartTime(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          window_start_time: value,
        }
      ),
      withWindowStartTimeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          window_start_time+: converted,
        }
      ),
    },
    withOffPeakWindow(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        off_peak_window: value,
      }
    ),
    withOffPeakWindowMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        off_peak_window+: converted,
      }
    ),
  },
  snapshot_options:: {
    local block = self,
    new(automatedSnapshotStartHour):: (
      {}
      + block.withAutomatedSnapshotStartHour(automatedSnapshotStartHour)
    ),
    withAutomatedSnapshotStartHour(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"automated_snapshot_start_hour" expected to be of type "number"';
      {
        automated_snapshot_start_hour: converted,
      }
    ),
  },
  software_update_options:: {
    local block = self,
    new():: (
      {}
    ),
    withAutoSoftwareUpdateEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"auto_software_update_enabled" expected to be of type "bool"';
      {
        auto_software_update_enabled: converted,
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
  vpc_options:: {
    local block = self,
    new():: (
      {}
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  withAdvancedSecurityOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_security_options: value,
    }
  ),
  withAutoTuneOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_tune_options: value,
    }
  ),
  withClusterConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cluster_config: value,
    }
  ),
  withCognitoOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_options: value,
    }
  ),
  withDomainEndpointOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_endpoint_options: value,
    }
  ),
  withEbsOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_options: value,
    }
  ),
  withEncryptAtRest(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encrypt_at_rest: value,
    }
  ),
  withLogPublishingOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options: value,
    }
  ),
  withNodeToNodeEncryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_to_node_encryption: value,
    }
  ),
  withOffPeakWindowOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      off_peak_window_options: value,
    }
  ),
  withSnapshotOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_options: value,
    }
  ),
  withSoftwareUpdateOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      software_update_options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options: value,
    }
  ),
  withAdvancedSecurityOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_security_options+: converted,
    }
  ),
  withAutoTuneOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_tune_options+: converted,
    }
  ),
  withClusterConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cluster_config+: converted,
    }
  ),
  withCognitoOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_options+: converted,
    }
  ),
  withDomainEndpointOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_endpoint_options+: converted,
    }
  ),
  withEbsOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_options+: converted,
    }
  ),
  withEncryptAtRestMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encrypt_at_rest+: converted,
    }
  ),
  withLogPublishingOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_publishing_options+: converted,
    }
  ),
  withNodeToNodeEncryptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      node_to_node_encryption+: converted,
    }
  ),
  withOffPeakWindowOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      off_peak_window_options+: converted,
    }
  ),
  withSnapshotOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snapshot_options+: converted,
    }
  ),
  withSoftwareUpdateOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      software_update_options+: converted,
    }
  ),
  withVpcOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_options+: converted,
    }
  ),
}

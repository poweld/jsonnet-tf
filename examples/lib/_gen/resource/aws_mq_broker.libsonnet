{
  local block = self,
  new(terraformName, brokerName, engineType, engineVersion, hostInstanceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_mq_broker",
          type:: "resource",
          attributes:: ["apply_immediately", "arn", "authentication_strategy", "auto_minor_version_upgrade", "broker_name", "data_replication_mode", "data_replication_primary_broker_arn", "deployment_mode", "engine_type", "engine_version", "host_instance_type", "id", "instances", "pending_data_replication_mode", "publicly_accessible", "region", "security_groups", "storage_type", "subnet_ids", "tags", "tags_all"],
        },
      },
    }
    + block.withBrokerName(brokerName)
    + block.withEngineType(engineType)
    + block.withEngineVersion(engineVersion)
    + block.withHostInstanceType(hostInstanceType)
  ),
  withApplyImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  withAuthenticationStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_strategy" expected to be of type "string"';
    {
      authentication_strategy: converted,
    }
  ),
  withAutoMinorVersionUpgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  withBrokerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"broker_name" expected to be of type "string"';
    {
      broker_name: converted,
    }
  ),
  withDataReplicationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_replication_mode" expected to be of type "string"';
    {
      data_replication_mode: converted,
    }
  ),
  withDataReplicationPrimaryBrokerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_replication_primary_broker_arn" expected to be of type "string"';
    {
      data_replication_primary_broker_arn: converted,
    }
  ),
  withDeploymentMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_mode" expected to be of type "string"';
    {
      deployment_mode: converted,
    }
  ),
  withEngineType(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withHostInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_instance_type" expected to be of type "string"';
    {
      host_instance_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPubliclyAccessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  withSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  withSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  withStorageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withRevision(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"revision" expected to be of type "number"';
      {
        revision: converted,
      }
    ),
  },
  encryption_options:: {
    local block = self,
    new():: (
      {}
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withUseAwsOwnedKey(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_aws_owned_key" expected to be of type "bool"';
      {
        use_aws_owned_key: converted,
      }
    ),
  },
  ldap_server_metadata:: {
    local block = self,
    new():: (
      {}
    ),
    withHosts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hosts" expected to be of type "list"';
      {
        hosts: converted,
      }
    ),
    withHostsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hosts" expected to be of type "list"';
      {
        hosts+: converted,
      }
    ),
    withRoleBase(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_base" expected to be of type "string"';
      {
        role_base: converted,
      }
    ),
    withRoleName(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_name" expected to be of type "string"';
      {
        role_name: converted,
      }
    ),
    withRoleSearchMatching(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_search_matching" expected to be of type "string"';
      {
        role_search_matching: converted,
      }
    ),
    withRoleSearchSubtree(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"role_search_subtree" expected to be of type "bool"';
      {
        role_search_subtree: converted,
      }
    ),
    withServiceAccountPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_account_password" expected to be of type "string"';
      {
        service_account_password: converted,
      }
    ),
    withServiceAccountUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_account_username" expected to be of type "string"';
      {
        service_account_username: converted,
      }
    ),
    withUserBase(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_base" expected to be of type "string"';
      {
        user_base: converted,
      }
    ),
    withUserRoleName(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_role_name" expected to be of type "string"';
      {
        user_role_name: converted,
      }
    ),
    withUserSearchMatching(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_search_matching" expected to be of type "string"';
      {
        user_search_matching: converted,
      }
    ),
    withUserSearchSubtree(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"user_search_subtree" expected to be of type "bool"';
      {
        user_search_subtree: converted,
      }
    ),
  },
  logs:: {
    local block = self,
    new():: (
      {}
    ),
    withAudit(value):: (
      local converted = value;
      assert std.isString(converted) : '"audit" expected to be of type "string"';
      {
        audit: converted,
      }
    ),
    withGeneral(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"general" expected to be of type "bool"';
      {
        general: converted,
      }
    ),
  },
  maintenance_window_start_time:: {
    local block = self,
    new(dayOfWeek, timeOfDay, timeZone):: (
      {}
      + block.withDayOfWeek(dayOfWeek)
      + block.withTimeOfDay(timeOfDay)
      + block.withTimeZone(timeZone)
    ),
    withDayOfWeek(value):: (
      local converted = value;
      assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
      {
        day_of_week: converted,
      }
    ),
    withTimeOfDay(value):: (
      local converted = value;
      assert std.isString(converted) : '"time_of_day" expected to be of type "string"';
      {
        time_of_day: converted,
      }
    ),
    withTimeZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"time_zone" expected to be of type "string"';
      {
        time_zone: converted,
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
  user:: {
    local block = self,
    new(password, username):: (
      {}
      + block.withPassword(password)
      + block.withUsername(username)
    ),
    withConsoleAccess(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"console_access" expected to be of type "bool"';
      {
        console_access: converted,
      }
    ),
    withGroups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
      {
        groups: converted,
      }
    ),
    withGroupsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
      {
        groups+: converted,
      }
    ),
    withPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    withReplicationUser(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"replication_user" expected to be of type "bool"';
      {
        replication_user: converted,
      }
    ),
    withUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withEncryptionOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_options: value,
    }
  ),
  withLdapServerMetadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ldap_server_metadata: value,
    }
  ),
  withLogs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs: value,
    }
  ),
  withMaintenanceWindowStartTime(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_window_start_time: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withUser(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  withEncryptionOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_options+: converted,
    }
  ),
  withLdapServerMetadataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ldap_server_metadata+: converted,
    }
  ),
  withLogsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs+: converted,
    }
  ),
  withMaintenanceWindowStartTimeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_window_start_time+: converted,
    }
  ),
  withUserMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user+: converted,
    }
  ),
}

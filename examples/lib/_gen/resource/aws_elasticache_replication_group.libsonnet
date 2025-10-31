{
  local block = self,
  new(terraformName, description, replicationGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_replication_group",
          type:: "resource",
          attributes:: ["apply_immediately", "arn", "at_rest_encryption_enabled", "auth_token", "auth_token_update_strategy", "auto_minor_version_upgrade", "automatic_failover_enabled", "cluster_enabled", "cluster_mode", "configuration_endpoint_address", "data_tiering_enabled", "description", "engine", "engine_version", "engine_version_actual", "final_snapshot_identifier", "global_replication_group_id", "id", "ip_discovery", "kms_key_id", "maintenance_window", "member_clusters", "multi_az_enabled", "network_type", "node_type", "notification_topic_arn", "num_cache_clusters", "num_node_groups", "parameter_group_name", "port", "preferred_cache_cluster_azs", "primary_endpoint_address", "reader_endpoint_address", "region", "replicas_per_node_group", "replication_group_id", "security_group_ids", "security_group_names", "snapshot_arns", "snapshot_name", "snapshot_retention_limit", "snapshot_window", "subnet_group_name", "tags", "tags_all", "transit_encryption_enabled", "transit_encryption_mode", "user_group_ids"],
        },
      },
    }
    + block.withDescription(description)
    + block.withReplicationGroupId(replicationGroupId)
  ),
  withApplyImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  withAtRestEncryptionEnabled(value):: (
    local converted = value;
    assert std.isString(converted) : '"at_rest_encryption_enabled" expected to be of type "string"';
    {
      at_rest_encryption_enabled: converted,
    }
  ),
  withAuthToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_token" expected to be of type "string"';
    {
      auth_token: converted,
    }
  ),
  withAuthTokenUpdateStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_token_update_strategy" expected to be of type "string"';
    {
      auth_token_update_strategy: converted,
    }
  ),
  withAutoMinorVersionUpgrade(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_minor_version_upgrade" expected to be of type "string"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  withAutomaticFailoverEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic_failover_enabled" expected to be of type "bool"';
    {
      automatic_failover_enabled: converted,
    }
  ),
  withClusterMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_mode" expected to be of type "string"';
    {
      cluster_mode: converted,
    }
  ),
  withDataTieringEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"data_tiering_enabled" expected to be of type "bool"';
    {
      data_tiering_enabled: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withFinalSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_identifier" expected to be of type "string"';
    {
      final_snapshot_identifier: converted,
    }
  ),
  withGlobalReplicationGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_replication_group_id" expected to be of type "string"';
    {
      global_replication_group_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpDiscovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_discovery" expected to be of type "string"';
    {
      ip_discovery: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
    }
  ),
  withMultiAzEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az_enabled" expected to be of type "bool"';
    {
      multi_az_enabled: converted,
    }
  ),
  withNetworkType(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  withNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  withNotificationTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_topic_arn" expected to be of type "string"';
    {
      notification_topic_arn: converted,
    }
  ),
  withNumCacheClusters(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_cache_clusters" expected to be of type "number"';
    {
      num_cache_clusters: converted,
    }
  ),
  withNumNodeGroups(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_node_groups" expected to be of type "number"';
    {
      num_node_groups: converted,
    }
  ),
  withParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_name" expected to be of type "string"';
    {
      parameter_group_name: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  withPreferredCacheClusterAzs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_cache_cluster_azs" expected to be of type "list"';
    {
      preferred_cache_cluster_azs: converted,
    }
  ),
  withPreferredCacheClusterAzsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_cache_cluster_azs" expected to be of type "list"';
    {
      preferred_cache_cluster_azs+: converted,
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
  withReplicasPerNodeGroup(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"replicas_per_node_group" expected to be of type "number"';
    {
      replicas_per_node_group: converted,
    }
  ),
  withReplicationGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_group_id" expected to be of type "string"';
    {
      replication_group_id: converted,
    }
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
  withSecurityGroupNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names: converted,
    }
  ),
  withSecurityGroupNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names+: converted,
    }
  ),
  withSnapshotArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_arns" expected to be of type "set"';
    {
      snapshot_arns: converted,
    }
  ),
  withSnapshotArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_arns" expected to be of type "set"';
    {
      snapshot_arns+: converted,
    }
  ),
  withSnapshotName(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_name" expected to be of type "string"';
    {
      snapshot_name: converted,
    }
  ),
  withSnapshotRetentionLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"snapshot_retention_limit" expected to be of type "number"';
    {
      snapshot_retention_limit: converted,
    }
  ),
  withSnapshotWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_window" expected to be of type "string"';
    {
      snapshot_window: converted,
    }
  ),
  withSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_group_name" expected to be of type "string"';
    {
      subnet_group_name: converted,
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
  withTransitEncryptionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_encryption_enabled" expected to be of type "bool"';
    {
      transit_encryption_enabled: converted,
    }
  ),
  withTransitEncryptionMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_encryption_mode" expected to be of type "string"';
    {
      transit_encryption_mode: converted,
    }
  ),
  withUserGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_group_ids" expected to be of type "set"';
    {
      user_group_ids: converted,
    }
  ),
  withUserGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_group_ids" expected to be of type "set"';
    {
      user_group_ids+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  log_delivery_configuration:: {
    local block = self,
    new(destination, destinationType, logFormat, logType):: (
      {}
      + block.withDestination(destination)
      + block.withDestinationType(destinationType)
      + block.withLogFormat(logFormat)
      + block.withLogType(logType)
    ),
    withDestination(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination" expected to be of type "string"';
      {
        destination: converted,
      }
    ),
    withDestinationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_type" expected to be of type "string"';
      {
        destination_type: converted,
      }
    ),
    withLogFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_format" expected to be of type "string"';
      {
        log_format: converted,
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
  withLogDeliveryConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLogDeliveryConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, clusterId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_cluster",
          type:: "resource",
          attributes:: ["apply_immediately", "arn", "auto_minor_version_upgrade", "availability_zone", "az_mode", "cache_nodes", "cluster_address", "cluster_id", "configuration_endpoint", "engine", "engine_version", "engine_version_actual", "final_snapshot_identifier", "id", "ip_discovery", "maintenance_window", "network_type", "node_type", "notification_topic_arn", "num_cache_nodes", "outpost_mode", "parameter_group_name", "port", "preferred_availability_zones", "preferred_outpost_arn", "region", "replication_group_id", "security_group_ids", "snapshot_arns", "snapshot_name", "snapshot_retention_limit", "snapshot_window", "subnet_group_name", "tags", "tags_all", "transit_encryption_enabled"],
        },
      },
    }
    + block.withClusterId(clusterId)
  ),
  withApplyImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  withAutoMinorVersionUpgrade(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_minor_version_upgrade" expected to be of type "string"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withAzMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"az_mode" expected to be of type "string"';
    {
      az_mode: converted,
    }
  ),
  withClusterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
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
  withMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
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
  withNumCacheNodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_cache_nodes" expected to be of type "number"';
    {
      num_cache_nodes: converted,
    }
  ),
  withOutpostMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_mode" expected to be of type "string"';
    {
      outpost_mode: converted,
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
  withPreferredAvailabilityZones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_availability_zones" expected to be of type "list"';
    {
      preferred_availability_zones: converted,
    }
  ),
  withPreferredAvailabilityZonesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_availability_zones" expected to be of type "list"';
    {
      preferred_availability_zones+: converted,
    }
  ),
  withPreferredOutpostArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_outpost_arn" expected to be of type "string"';
    {
      preferred_outpost_arn: converted,
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
  withSnapshotArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_arns" expected to be of type "list"';
    {
      snapshot_arns: converted,
    }
  ),
  withSnapshotArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_arns" expected to be of type "list"';
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

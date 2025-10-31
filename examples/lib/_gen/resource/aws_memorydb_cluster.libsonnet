{
  local block = self,
  new(terraformName, aclName, nodeType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_memorydb_cluster",
          type:: "resource",
          attributes:: ["acl_name", "arn", "auto_minor_version_upgrade", "cluster_endpoint", "data_tiering", "description", "engine", "engine_patch_version", "engine_version", "final_snapshot_name", "id", "kms_key_arn", "maintenance_window", "multi_region_cluster_name", "name", "name_prefix", "node_type", "num_replicas_per_shard", "num_shards", "parameter_group_name", "port", "region", "security_group_ids", "shards", "snapshot_arns", "snapshot_name", "snapshot_retention_limit", "snapshot_window", "sns_topic_arn", "subnet_group_name", "tags", "tags_all", "tls_enabled"],
        },
      },
    }
    + block.withAclName(aclName)
    + block.withNodeType(nodeType)
  ),
  withAclName(value):: (
    local converted = value;
    assert std.isString(converted) : '"acl_name" expected to be of type "string"';
    {
      acl_name: converted,
    }
  ),
  withAutoMinorVersionUpgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  withDataTiering(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"data_tiering" expected to be of type "bool"';
    {
      data_tiering: converted,
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
  withFinalSnapshotName(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_name" expected to be of type "string"';
    {
      final_snapshot_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
    }
  ),
  withMultiRegionClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"multi_region_cluster_name" expected to be of type "string"';
    {
      multi_region_cluster_name: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  withNumReplicasPerShard(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_replicas_per_shard" expected to be of type "number"';
    {
      num_replicas_per_shard: converted,
    }
  ),
  withNumShards(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_shards" expected to be of type "number"';
    {
      num_shards: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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
  withSnsTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
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
  withTlsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tls_enabled" expected to be of type "bool"';
    {
      tls_enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

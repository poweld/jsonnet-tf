{
  local block = self,
  new(terraformName, associateDefaultSecurityGroup, bandwidthThrottling, createPublicIp, dataPlaneRouting, defaultLargeStagingDiskType, ebsEncryption, replicationServerInstanceType, replicationServersSecurityGroupsIds, stagingAreaSubnetId, stagingAreaTags, useDedicatedReplicationServer):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_drs_replication_configuration_template",
          type:: "resource",
          attributes:: ["arn", "associate_default_security_group", "auto_replicate_new_disks", "bandwidth_throttling", "create_public_ip", "data_plane_routing", "default_large_staging_disk_type", "ebs_encryption", "ebs_encryption_key_arn", "id", "region", "replication_server_instance_type", "replication_servers_security_groups_ids", "staging_area_subnet_id", "staging_area_tags", "tags", "tags_all", "use_dedicated_replication_server"],
        },
      },
    }
    + block.withAssociateDefaultSecurityGroup(associateDefaultSecurityGroup)
    + block.withBandwidthThrottling(bandwidthThrottling)
    + block.withCreatePublicIp(createPublicIp)
    + block.withDataPlaneRouting(dataPlaneRouting)
    + block.withDefaultLargeStagingDiskType(defaultLargeStagingDiskType)
    + block.withEbsEncryption(ebsEncryption)
    + block.withReplicationServerInstanceType(replicationServerInstanceType)
    + block.withReplicationServersSecurityGroupsIds(replicationServersSecurityGroupsIds)
    + block.withStagingAreaSubnetId(stagingAreaSubnetId)
    + block.withStagingAreaTags(stagingAreaTags)
    + block.withUseDedicatedReplicationServer(useDedicatedReplicationServer)
  ),
  withAssociateDefaultSecurityGroup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"associate_default_security_group" expected to be of type "bool"';
    {
      associate_default_security_group: converted,
    }
  ),
  withAutoReplicateNewDisks(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_replicate_new_disks" expected to be of type "bool"';
    {
      auto_replicate_new_disks: converted,
    }
  ),
  withBandwidthThrottling(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"bandwidth_throttling" expected to be of type "number"';
    {
      bandwidth_throttling: converted,
    }
  ),
  withCreatePublicIp(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_public_ip" expected to be of type "bool"';
    {
      create_public_ip: converted,
    }
  ),
  withDataPlaneRouting(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_plane_routing" expected to be of type "string"';
    {
      data_plane_routing: converted,
    }
  ),
  withDefaultLargeStagingDiskType(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_large_staging_disk_type" expected to be of type "string"';
    {
      default_large_staging_disk_type: converted,
    }
  ),
  withEbsEncryption(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_encryption" expected to be of type "string"';
    {
      ebs_encryption: converted,
    }
  ),
  withEbsEncryptionKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_encryption_key_arn" expected to be of type "string"';
    {
      ebs_encryption_key_arn: converted,
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
  withReplicationServerInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_server_instance_type" expected to be of type "string"';
    {
      replication_server_instance_type: converted,
    }
  ),
  withReplicationServersSecurityGroupsIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_servers_security_groups_ids" expected to be of type "list"';
    {
      replication_servers_security_groups_ids: converted,
    }
  ),
  withReplicationServersSecurityGroupsIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"replication_servers_security_groups_ids" expected to be of type "list"';
    {
      replication_servers_security_groups_ids+: converted,
    }
  ),
  withStagingAreaSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"staging_area_subnet_id" expected to be of type "string"';
    {
      staging_area_subnet_id: converted,
    }
  ),
  withStagingAreaTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"staging_area_tags" expected to be of type "map"';
    {
      staging_area_tags: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withUseDedicatedReplicationServer(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_dedicated_replication_server" expected to be of type "bool"';
    {
      use_dedicated_replication_server: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  pit_policy:: {
    local block = self,
    new(interval, retentionDuration, units):: (
      {}
      + block.withInterval(interval)
      + block.withRetentionDuration(retentionDuration)
      + block.withUnits(units)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
    withRetentionDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retention_duration" expected to be of type "number"';
      {
        retention_duration: converted,
      }
    ),
    withRuleId(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_id" expected to be of type "number"';
      {
        rule_id: converted,
      }
    ),
    withUnits(value):: (
      local converted = value;
      assert std.isString(converted) : '"units" expected to be of type "string"';
      {
        units: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withPitPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pit_policy: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withPitPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pit_policy+: converted,
    }
  ),
}

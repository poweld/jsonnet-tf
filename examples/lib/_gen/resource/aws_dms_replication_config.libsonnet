{
  local block = self,
  new(terraformName, replicationConfigIdentifier, replicationType, sourceEndpointArn, tableMappings, targetEndpointArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_replication_config",
          type:: "resource",
          attributes:: ["arn", "id", "region", "replication_config_identifier", "replication_settings", "replication_type", "resource_identifier", "source_endpoint_arn", "start_replication", "supplemental_settings", "table_mappings", "tags", "tags_all", "target_endpoint_arn"],
        },
      },
    }
    + block.withReplicationConfigIdentifier(replicationConfigIdentifier)
    + block.withReplicationType(replicationType)
    + block.withSourceEndpointArn(sourceEndpointArn)
    + block.withTableMappings(tableMappings)
    + block.withTargetEndpointArn(targetEndpointArn)
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
  withReplicationConfigIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_config_identifier" expected to be of type "string"';
    {
      replication_config_identifier: converted,
    }
  ),
  withReplicationSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_settings" expected to be of type "string"';
    {
      replication_settings: converted,
    }
  ),
  withReplicationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_type" expected to be of type "string"';
    {
      replication_type: converted,
    }
  ),
  withResourceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_identifier" expected to be of type "string"';
    {
      resource_identifier: converted,
    }
  ),
  withSourceEndpointArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_endpoint_arn" expected to be of type "string"';
    {
      source_endpoint_arn: converted,
    }
  ),
  withStartReplication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_replication" expected to be of type "bool"';
    {
      start_replication: converted,
    }
  ),
  withSupplementalSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"supplemental_settings" expected to be of type "string"';
    {
      supplemental_settings: converted,
    }
  ),
  withTableMappings(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_mappings" expected to be of type "string"';
    {
      table_mappings: converted,
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
  withTargetEndpointArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_endpoint_arn" expected to be of type "string"';
    {
      target_endpoint_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  compute_config:: {
    local block = self,
    new(replicationSubnetGroupId):: (
      {}
      + block.withReplicationSubnetGroupId(replicationSubnetGroupId)
    ),
    withAvailabilityZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    withDnsNameServers(value):: (
      local converted = value;
      assert std.isString(converted) : '"dns_name_servers" expected to be of type "string"';
      {
        dns_name_servers: converted,
      }
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withMaxCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity_units" expected to be of type "number"';
      {
        max_capacity_units: converted,
      }
    ),
    withMinCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_capacity_units" expected to be of type "number"';
      {
        min_capacity_units: converted,
      }
    ),
    withMultiAz(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
      {
        multi_az: converted,
      }
    ),
    withPreferredMaintenanceWindow(value):: (
      local converted = value;
      assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
      {
        preferred_maintenance_window: converted,
      }
    ),
    withReplicationSubnetGroupId(value):: (
      local converted = value;
      assert std.isString(converted) : '"replication_subnet_group_id" expected to be of type "string"';
      {
        replication_subnet_group_id: converted,
      }
    ),
    withVpcSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
      {
        vpc_security_group_ids: converted,
      }
    ),
    withVpcSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
      {
        vpc_security_group_ids+: converted,
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
  withComputeConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withComputeConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_config+: converted,
    }
  ),
}

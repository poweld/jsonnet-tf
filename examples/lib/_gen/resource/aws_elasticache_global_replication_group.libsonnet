{
  local block = self,
  new(terraformName, globalReplicationGroupIdSuffix, primaryReplicationGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_global_replication_group",
          type:: "resource",
          attributes:: ["arn", "at_rest_encryption_enabled", "auth_token_enabled", "automatic_failover_enabled", "cache_node_type", "cluster_enabled", "engine", "engine_version", "engine_version_actual", "global_node_groups", "global_replication_group_description", "global_replication_group_id", "global_replication_group_id_suffix", "id", "num_node_groups", "parameter_group_name", "primary_replication_group_id", "region", "transit_encryption_enabled"],
        },
      },
    }
    + block.withGlobalReplicationGroupIdSuffix(globalReplicationGroupIdSuffix)
    + block.withPrimaryReplicationGroupId(primaryReplicationGroupId)
  ),
  withAutomaticFailoverEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic_failover_enabled" expected to be of type "bool"';
    {
      automatic_failover_enabled: converted,
    }
  ),
  withCacheNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_node_type" expected to be of type "string"';
    {
      cache_node_type: converted,
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
  withGlobalReplicationGroupDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_replication_group_description" expected to be of type "string"';
    {
      global_replication_group_description: converted,
    }
  ),
  withGlobalReplicationGroupIdSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_replication_group_id_suffix" expected to be of type "string"';
    {
      global_replication_group_id_suffix: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withPrimaryReplicationGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_replication_group_id" expected to be of type "string"';
    {
      primary_replication_group_id: converted,
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

{
  local block = self,
  new(terraformName, replicationGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_replication_group",
          type:: "data",
          attributes:: ["arn", "auth_token_enabled", "automatic_failover_enabled", "cluster_mode", "configuration_endpoint_address", "description", "id", "log_delivery_configuration", "member_clusters", "multi_az_enabled", "node_type", "num_cache_clusters", "num_node_groups", "port", "primary_endpoint_address", "reader_endpoint_address", "region", "replicas_per_node_group", "replication_group_id", "snapshot_retention_limit", "snapshot_window"],
        },
      },
    }
    + block.withReplicationGroupId(replicationGroupId)
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
  withReplicationGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_group_id" expected to be of type "string"';
    {
      replication_group_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

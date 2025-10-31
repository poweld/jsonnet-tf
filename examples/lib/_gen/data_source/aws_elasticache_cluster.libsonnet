{
  local block = self,
  new(terraformName, clusterId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_cluster",
          type:: "data",
          attributes:: ["arn", "availability_zone", "cache_nodes", "cluster_address", "cluster_id", "configuration_endpoint", "engine", "engine_version", "id", "ip_discovery", "log_delivery_configuration", "maintenance_window", "network_type", "node_type", "notification_topic_arn", "num_cache_nodes", "parameter_group_name", "port", "preferred_outpost_arn", "region", "replication_group_id", "security_group_ids", "snapshot_retention_limit", "snapshot_window", "subnet_group_name", "tags"],
        },
      },
    }
    + block.withClusterId(clusterId)
  ),
  withClusterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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

{
  local block = self,
  new(terraformName, dbClusterIdentifier, dbShardGroupIdentifier, maxAcu):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_shard_group",
          type:: "resource",
          attributes:: ["arn", "compute_redundancy", "db_cluster_identifier", "db_shard_group_identifier", "db_shard_group_resource_id", "endpoint", "max_acu", "min_acu", "publicly_accessible", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDbClusterIdentifier(dbClusterIdentifier)
    + block.withDbShardGroupIdentifier(dbShardGroupIdentifier)
    + block.withMaxAcu(maxAcu)
  ),
  withComputeRedundancy(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"compute_redundancy" expected to be of type "number"';
    {
      compute_redundancy: converted,
    }
  ),
  withDbClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_identifier" expected to be of type "string"';
    {
      db_cluster_identifier: converted,
    }
  ),
  withDbShardGroupIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_shard_group_identifier" expected to be of type "string"';
    {
      db_shard_group_identifier: converted,
    }
  ),
  withMaxAcu(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_acu" expected to be of type "number"';
    {
      max_acu: converted,
    }
  ),
  withMinAcu(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_acu" expected to be of type "number"';
    {
      min_acu: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

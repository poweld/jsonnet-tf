{
  local block = self,
  new(terraformName, multiRegionClusterNameSuffix, nodeType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_memorydb_multi_region_cluster",
          type:: "resource",
          attributes:: ["arn", "description", "engine", "engine_version", "multi_region_cluster_name", "multi_region_cluster_name_suffix", "multi_region_parameter_group_name", "node_type", "num_shards", "region", "status", "tags", "tags_all", "tls_enabled", "update_strategy"],
        },
      },
    }
    + block.withMultiRegionClusterNameSuffix(multiRegionClusterNameSuffix)
    + block.withNodeType(nodeType)
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
  withMultiRegionClusterNameSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"multi_region_cluster_name_suffix" expected to be of type "string"';
    {
      multi_region_cluster_name_suffix: converted,
    }
  ),
  withMultiRegionParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"multi_region_parameter_group_name" expected to be of type "string"';
    {
      multi_region_parameter_group_name: converted,
    }
  ),
  withNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  withNumShards(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_shards" expected to be of type "number"';
    {
      num_shards: converted,
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
  withTlsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tls_enabled" expected to be of type "bool"';
    {
      tls_enabled: converted,
    }
  ),
  withUpdateStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_strategy" expected to be of type "string"';
    {
      update_strategy: converted,
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

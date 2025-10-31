{
  local block = self,
  new(terraformName, clusters, identifier, witnessRegion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dsql_cluster_peering",
          type:: "resource",
          attributes:: ["clusters", "identifier", "region", "witness_region"],
        },
      },
    }
    + block.withClusters(clusters)
    + block.withIdentifier(identifier)
    + block.withWitnessRegion(witnessRegion)
  ),
  withClusters(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"clusters" expected to be of type "set"';
    {
      clusters: converted,
    }
  ),
  withClustersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"clusters" expected to be of type "set"';
    {
      clusters+: converted,
    }
  ),
  withIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"identifier" expected to be of type "string"';
    {
      identifier: converted,
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
  withWitnessRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"witness_region" expected to be of type "string"';
    {
      witness_region: converted,
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

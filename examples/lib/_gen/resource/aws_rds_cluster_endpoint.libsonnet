{
  local block = self,
  new(terraformName, clusterEndpointIdentifier, clusterIdentifier, customEndpointType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_cluster_endpoint",
          type:: "resource",
          attributes:: ["arn", "cluster_endpoint_identifier", "cluster_identifier", "custom_endpoint_type", "endpoint", "excluded_members", "id", "region", "static_members", "tags", "tags_all"],
        },
      },
    }
    + block.withClusterEndpointIdentifier(clusterEndpointIdentifier)
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withCustomEndpointType(customEndpointType)
  ),
  withClusterEndpointIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_endpoint_identifier" expected to be of type "string"';
    {
      cluster_endpoint_identifier: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withCustomEndpointType(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_endpoint_type" expected to be of type "string"';
    {
      custom_endpoint_type: converted,
    }
  ),
  withExcludedMembers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_members" expected to be of type "set"';
    {
      excluded_members: converted,
    }
  ),
  withExcludedMembersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_members" expected to be of type "set"';
    {
      excluded_members+: converted,
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
  withStaticMembers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"static_members" expected to be of type "set"';
    {
      static_members: converted,
    }
  ),
  withStaticMembersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"static_members" expected to be of type "set"';
    {
      static_members+: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_orderable_cluster",
          type:: "data",
          attributes:: ["availability_zones", "cluster_type", "cluster_version", "id", "node_type", "preferred_node_types", "region"],
        },
      },
    }
  ),
  withClusterType(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_type" expected to be of type "string"';
    {
      cluster_type: converted,
    }
  ),
  withClusterVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_version" expected to be of type "string"';
    {
      cluster_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  withPreferredNodeTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_node_types" expected to be of type "list"';
    {
      preferred_node_types: converted,
    }
  ),
  withPreferredNodeTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_node_types" expected to be of type "list"';
    {
      preferred_node_types+: converted,
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
}

{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_cluster_versions",
          type:: "data",
          attributes:: ["cluster_type", "cluster_versions", "cluster_versions_only", "default_only", "include_all", "region", "version_status"],
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
  withClusterVersionsOnly(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_versions_only" expected to be of type "list"';
    {
      cluster_versions_only: converted,
    }
  ),
  withClusterVersionsOnlyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_versions_only" expected to be of type "list"';
    {
      cluster_versions_only+: converted,
    }
  ),
  withDefaultOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_only" expected to be of type "bool"';
    {
      default_only: converted,
    }
  ),
  withIncludeAll(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_all" expected to be of type "bool"';
    {
      include_all: converted,
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
  withVersionStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_status" expected to be of type "string"';
    {
      version_status: converted,
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

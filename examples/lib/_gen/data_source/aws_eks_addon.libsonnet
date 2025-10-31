{
  local block = self,
  new(terraformName, addonName, clusterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_addon",
          type:: "data",
          attributes:: ["addon_name", "addon_version", "arn", "cluster_name", "configuration_values", "created_at", "id", "modified_at", "pod_identity_association", "region", "service_account_role_arn", "tags"],
        },
      },
    }
    + block.withAddonName(addonName)
    + block.withClusterName(clusterName)
  ),
  withAddonName(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_name" expected to be of type "string"';
    {
      addon_name: converted,
    }
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
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

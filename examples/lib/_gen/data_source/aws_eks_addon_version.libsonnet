{
  local block = self,
  new(terraformName, addonName, kubernetesVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_addon_version",
          type:: "data",
          attributes:: ["addon_name", "id", "kubernetes_version", "most_recent", "region", "version"],
        },
      },
    }
    + block.withAddonName(addonName)
    + block.withKubernetesVersion(kubernetesVersion)
  ),
  withAddonName(value):: (
    local converted = value;
    assert std.isString(converted) : '"addon_name" expected to be of type "string"';
    {
      addon_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKubernetesVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"kubernetes_version" expected to be of type "string"';
    {
      kubernetes_version: converted,
    }
  ),
  withMostRecent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
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

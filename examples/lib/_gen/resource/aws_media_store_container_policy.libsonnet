{
  local block = self,
  new(terraformName, containerName, policy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_media_store_container_policy",
          type:: "resource",
          attributes:: ["container_name", "id", "policy", "region"],
        },
      },
    }
    + block.withContainerName(containerName)
    + block.withPolicy(policy)
  ),
  withContainerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_name" expected to be of type "string"';
    {
      container_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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

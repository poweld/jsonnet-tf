{
  local block = self,
  new(terraformName, repositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_images",
          type:: "data",
          attributes:: ["image_ids", "region", "registry_id", "repository_name"],
        },
      },
    }
    + block.withRepositoryName(repositoryName)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  "#withRegistryId":: "ID of the registry (AWS account ID)",
  withRegistryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_id" expected to be of type "string"';
    {
      registry_id: converted,
    }
  ),
  "#withRepositoryName":: "Name of the repository",
  withRepositoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
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

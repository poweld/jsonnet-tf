{
  local block = self,
  new(terraformName, repositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_prebuilt_ecr_image",
          type:: "data",
          attributes:: ["dns_suffix", "id", "image_tag", "region", "registry_id", "registry_path", "repository_name"],
        },
      },
    }
    + block.withRepositoryName(repositoryName)
  ),
  withDnsSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_suffix" expected to be of type "string"';
    {
      dns_suffix: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageTag(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag" expected to be of type "string"';
    {
      image_tag: converted,
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

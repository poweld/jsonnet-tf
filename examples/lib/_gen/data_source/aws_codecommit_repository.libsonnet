{
  local block = self,
  new(terraformName, repositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codecommit_repository",
          type:: "data",
          attributes:: ["arn", "clone_url_http", "clone_url_ssh", "id", "kms_key_id", "region", "repository_id", "repository_name"],
        },
      },
    }
    + block.withRepositoryName(repositoryName)
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

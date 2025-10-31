{
  local block = self,
  new(terraformName, codeRepositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_code_repository",
          type:: "resource",
          attributes:: ["arn", "code_repository_name", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withCodeRepositoryName(codeRepositoryName)
  ),
  withCodeRepositoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_repository_name" expected to be of type "string"';
    {
      code_repository_name: converted,
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
  git_config:: {
    local block = self,
    new(repositoryUrl):: (
      {}
      + block.withRepositoryUrl(repositoryUrl)
    ),
    withBranch(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch" expected to be of type "string"';
      {
        branch: converted,
      }
    ),
    withRepositoryUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_url" expected to be of type "string"';
      {
        repository_url: converted,
      }
    ),
    withSecretArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
      {
        secret_arn: converted,
      }
    ),
  },
  withGitConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      git_config: value,
    }
  ),
  withGitConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      git_config+: converted,
    }
  ),
}

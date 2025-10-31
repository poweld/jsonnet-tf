{
  local block = self,
  new(terraformName, ecrRepositoryPrefix):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_pull_through_cache_rule",
          type:: "data",
          attributes:: ["credential_arn", "custom_role_arn", "ecr_repository_prefix", "id", "region", "registry_id", "upstream_registry_url", "upstream_repository_prefix"],
        },
      },
    }
    + block.withEcrRepositoryPrefix(ecrRepositoryPrefix)
  ),
  withEcrRepositoryPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"ecr_repository_prefix" expected to be of type "string"';
    {
      ecr_repository_prefix: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

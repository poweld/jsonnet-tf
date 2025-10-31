{
  local block = self,
  new(terraformName, ecrRepositoryPrefix, upstreamRegistryUrl):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_pull_through_cache_rule",
          type:: "resource",
          attributes:: ["credential_arn", "custom_role_arn", "ecr_repository_prefix", "id", "region", "registry_id", "upstream_registry_url", "upstream_repository_prefix"],
        },
      },
    }
    + block.withEcrRepositoryPrefix(ecrRepositoryPrefix)
    + block.withUpstreamRegistryUrl(upstreamRegistryUrl)
  ),
  withCredentialArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"credential_arn" expected to be of type "string"';
    {
      credential_arn: converted,
    }
  ),
  withCustomRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_role_arn" expected to be of type "string"';
    {
      custom_role_arn: converted,
    }
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
  withUpstreamRegistryUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"upstream_registry_url" expected to be of type "string"';
    {
      upstream_registry_url: converted,
    }
  ),
  withUpstreamRepositoryPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"upstream_repository_prefix" expected to be of type "string"';
    {
      upstream_repository_prefix: converted,
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

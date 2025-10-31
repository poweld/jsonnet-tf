{
  local block = self,
  new(terraformName, repositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_image",
          type:: "data",
          attributes:: ["id", "image_digest", "image_pushed_at", "image_size_in_bytes", "image_tag", "image_tags", "image_uri", "most_recent", "region", "registry_id", "repository_name"],
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
  withImageDigest(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_digest" expected to be of type "string"';
    {
      image_digest: converted,
    }
  ),
  withImageTag(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag" expected to be of type "string"';
    {
      image_tag: converted,
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
  withRegistryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_id" expected to be of type "string"';
    {
      registry_id: converted,
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

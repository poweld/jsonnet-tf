{
  local block = self,
  new(terraformName, prefix):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_repository_creation_template",
          type:: "data",
          attributes:: ["applied_for", "custom_role_arn", "description", "encryption_configuration", "id", "image_tag_mutability", "image_tag_mutability_exclusion_filter", "lifecycle_policy", "prefix", "region", "registry_id", "repository_policy", "resource_tags"],
        },
      },
    }
    + block.withPrefix(prefix)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix" expected to be of type "string"';
    {
      prefix: converted,
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
  withResourceTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_tags" expected to be of type "map"';
    {
      resource_tags: converted,
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

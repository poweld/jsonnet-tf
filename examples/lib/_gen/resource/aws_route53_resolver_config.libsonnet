{
  local block = self,
  new(terraformName, autodefinedReverseFlag, resourceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_config",
          type:: "resource",
          attributes:: ["autodefined_reverse_flag", "id", "owner_id", "region", "resource_id"],
        },
      },
    }
    + block.withAutodefinedReverseFlag(autodefinedReverseFlag)
    + block.withResourceId(resourceId)
  ),
  withAutodefinedReverseFlag(value):: (
    local converted = value;
    assert std.isString(converted) : '"autodefined_reverse_flag" expected to be of type "string"';
    {
      autodefined_reverse_flag: converted,
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
  withResourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
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

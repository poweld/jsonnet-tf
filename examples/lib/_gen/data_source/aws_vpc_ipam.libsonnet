{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipam",
          type:: "data",
          attributes:: ["arn", "default_resource_discovery_association_id", "default_resource_discovery_id", "description", "enable_private_gua", "id", "ipam_region", "metered_account", "operating_regions", "owner_id", "private_default_scope_id", "public_default_scope_id", "region", "resource_discovery_association_count", "scope_count", "state", "state_message", "tags", "tier"],
        },
      },
    }
    + block.withId(id)
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

{
  local block = self,
  new(terraformName, groupId, identityStoreId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_identitystore_group_memberships",
          type:: "data",
          attributes:: ["group_id", "group_memberships", "identity_store_id", "region"],
        },
      },
    }
    + block.withGroupId(groupId)
    + block.withIdentityStoreId(identityStoreId)
  ),
  withGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  withIdentityStoreId(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_store_id" expected to be of type "string"';
    {
      identity_store_id: converted,
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

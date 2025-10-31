{
  local block = self,
  new(terraformName, identityStoreId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_identitystore_users",
          type:: "data",
          attributes:: ["identity_store_id", "region", "users"],
        },
      },
    }
    + block.withIdentityStoreId(identityStoreId)
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

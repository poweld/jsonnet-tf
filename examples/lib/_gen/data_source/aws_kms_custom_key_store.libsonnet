{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_custom_key_store",
          type:: "data",
          attributes:: ["cloud_hsm_cluster_id", "connection_state", "creation_date", "custom_key_store_id", "custom_key_store_name", "id", "region", "trust_anchor_certificate"],
        },
      },
    }
  ),
  withCustomKeyStoreId(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_id" expected to be of type "string"';
    {
      custom_key_store_id: converted,
    }
  ),
  withCustomKeyStoreName(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_name" expected to be of type "string"';
    {
      custom_key_store_name: converted,
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

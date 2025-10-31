{
  local block = self,
  new(terraformName, keyId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_key",
          type:: "data",
          attributes:: ["arn", "aws_account_id", "cloud_hsm_cluster_id", "creation_date", "custom_key_store_id", "customer_master_key_spec", "deletion_date", "description", "enabled", "expiration_model", "grant_tokens", "id", "key_id", "key_manager", "key_spec", "key_state", "key_usage", "multi_region", "multi_region_configuration", "origin", "pending_deletion_window_in_days", "region", "valid_to", "xks_key_configuration"],
        },
      },
    }
    + block.withKeyId(keyId)
  ),
  withGrantTokens(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"grant_tokens" expected to be of type "list"';
    {
      grant_tokens: converted,
    }
  ),
  withGrantTokensMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"grant_tokens" expected to be of type "list"';
    {
      grant_tokens+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
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

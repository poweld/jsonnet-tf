{
  local block = self,
  new(terraformName, keyId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_public_key",
          type:: "data",
          attributes:: ["arn", "customer_master_key_spec", "encryption_algorithms", "grant_tokens", "id", "key_id", "key_usage", "public_key", "public_key_pem", "region", "signing_algorithms"],
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

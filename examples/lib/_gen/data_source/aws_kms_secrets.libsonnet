{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_secrets",
          type:: "data",
          attributes:: ["id", "plaintext", "region"],
        },
      },
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
  secret:: {
    local block = self,
    new(name, payload):: (
      {}
      + block.withName(name)
      + block.withPayload(payload)
    ),
    withContext(value):: (
      local converted = value;
      assert std.isObject(converted) : '"context" expected to be of type "map"';
      {
        context: converted,
      }
    ),
    withEncryptionAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_algorithm" expected to be of type "string"';
      {
        encryption_algorithm: converted,
      }
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
    withKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_id" expected to be of type "string"';
      {
        key_id: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withPayload(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload" expected to be of type "string"';
      {
        payload: converted,
      }
    ),
  },
  withSecret(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secret: value,
    }
  ),
  withSecretMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secret+: converted,
    }
  ),
}

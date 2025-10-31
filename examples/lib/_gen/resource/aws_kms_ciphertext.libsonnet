{
  local block = self,
  new(terraformName, keyId, plaintext):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_ciphertext",
          type:: "resource",
          attributes:: ["ciphertext_blob", "context", "id", "key_id", "plaintext", "region"],
        },
      },
    }
    + block.withKeyId(keyId)
    + block.withPlaintext(plaintext)
  ),
  withContext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"context" expected to be of type "map"';
    {
      context: converted,
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
  withPlaintext(value):: (
    local converted = value;
    assert std.isString(converted) : '"plaintext" expected to be of type "string"';
    {
      plaintext: converted,
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

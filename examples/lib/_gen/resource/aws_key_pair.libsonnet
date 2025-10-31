{
  local block = self,
  new(terraformName, publicKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_key_pair",
          type:: "resource",
          attributes:: ["arn", "fingerprint", "id", "key_name", "key_name_prefix", "key_pair_id", "key_type", "public_key", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withPublicKey(publicKey)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  withKeyNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name_prefix" expected to be of type "string"';
    {
      key_name_prefix: converted,
    }
  ),
  withPublicKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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

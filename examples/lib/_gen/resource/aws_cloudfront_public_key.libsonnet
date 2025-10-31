{
  local block = self,
  new(terraformName, encodedKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_public_key",
          type:: "resource",
          attributes:: ["caller_reference", "comment", "encoded_key", "etag", "id", "name", "name_prefix"],
        },
      },
    }
    + block.withEncodedKey(encodedKey)
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withEncodedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoded_key" expected to be of type "string"';
    {
      encoded_key: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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

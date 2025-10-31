{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_objects",
          type:: "data",
          attributes:: ["bucket", "common_prefixes", "delimiter", "encoding_type", "fetch_owner", "id", "keys", "max_keys", "owners", "prefix", "region", "request_charged", "request_payer", "start_after"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withDelimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"delimiter" expected to be of type "string"';
    {
      delimiter: converted,
    }
  ),
  withEncodingType(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoding_type" expected to be of type "string"';
    {
      encoding_type: converted,
    }
  ),
  withFetchOwner(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fetch_owner" expected to be of type "bool"';
    {
      fetch_owner: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxKeys(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_keys" expected to be of type "number"';
    {
      max_keys: converted,
    }
  ),
  withPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix" expected to be of type "string"';
    {
      prefix: converted,
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
  withRequestPayer(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_payer" expected to be of type "string"';
    {
      request_payer: converted,
    }
  ),
  withStartAfter(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_after" expected to be of type "string"';
    {
      start_after: converted,
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

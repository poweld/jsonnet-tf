{
  local block = self,
  new(terraformName, hashKey, item, tableName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_table_item",
          type:: "resource",
          attributes:: ["hash_key", "id", "item", "range_key", "region", "table_name"],
        },
      },
    }
    + block.withHashKey(hashKey)
    + block.withItem(item)
    + block.withTableName(tableName)
  ),
  withHashKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"hash_key" expected to be of type "string"';
    {
      hash_key: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withItem(value):: (
    local converted = value;
    assert std.isString(converted) : '"item" expected to be of type "string"';
    {
      item: converted,
    }
  ),
  withRangeKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"range_key" expected to be of type "string"';
    {
      range_key: converted,
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
  withTableName(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_name" expected to be of type "string"';
    {
      table_name: converted,
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

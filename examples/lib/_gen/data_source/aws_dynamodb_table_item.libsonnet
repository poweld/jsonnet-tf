{
  local block = self,
  new(terraformName, key, tableName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_table_item",
          type:: "data",
          attributes:: ["expression_attribute_names", "id", "item", "key", "projection_expression", "region", "table_name"],
        },
      },
    }
    + block.withKey(key)
    + block.withTableName(tableName)
  ),
  withExpressionAttributeNames(value):: (
    local converted = value;
    assert std.isObject(converted) : '"expression_attribute_names" expected to be of type "map"';
    {
      expression_attribute_names: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  withProjectionExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"projection_expression" expected to be of type "string"';
    {
      projection_expression: converted,
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

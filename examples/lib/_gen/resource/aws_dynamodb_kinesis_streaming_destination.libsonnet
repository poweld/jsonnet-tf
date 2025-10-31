{
  local block = self,
  new(terraformName, streamArn, tableName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_kinesis_streaming_destination",
          type:: "resource",
          attributes:: ["approximate_creation_date_time_precision", "id", "region", "stream_arn", "table_name"],
        },
      },
    }
    + block.withStreamArn(streamArn)
    + block.withTableName(tableName)
  ),
  withApproximateCreationDateTimePrecision(value):: (
    local converted = value;
    assert std.isString(converted) : '"approximate_creation_date_time_precision" expected to be of type "string"';
    {
      approximate_creation_date_time_precision: converted,
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
  withStreamArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
    {
      stream_arn: converted,
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

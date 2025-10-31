{
  local block = self,
  new(terraformName, deliveryDestinationArn, deliverySourceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_delivery",
          type:: "resource",
          attributes:: ["arn", "delivery_destination_arn", "delivery_source_name", "field_delimiter", "id", "record_fields", "region", "s3_delivery_configuration", "tags", "tags_all"],
        },
      },
    }
    + block.withDeliveryDestinationArn(deliveryDestinationArn)
    + block.withDeliverySourceName(deliverySourceName)
  ),
  withDeliveryDestinationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_destination_arn" expected to be of type "string"';
    {
      delivery_destination_arn: converted,
    }
  ),
  withDeliverySourceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_source_name" expected to be of type "string"';
    {
      delivery_source_name: converted,
    }
  ),
  withFieldDelimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"field_delimiter" expected to be of type "string"';
    {
      field_delimiter: converted,
    }
  ),
  withRecordFields(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"record_fields" expected to be of type "list"';
    {
      record_fields: converted,
    }
  ),
  withRecordFieldsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"record_fields" expected to be of type "list"';
    {
      record_fields+: converted,
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
  withS3DeliveryConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_delivery_configuration" expected to be of type "list"';
    {
      s3_delivery_configuration: converted,
    }
  ),
  withS3DeliveryConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"s3_delivery_configuration" expected to be of type "list"';
    {
      s3_delivery_configuration+: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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

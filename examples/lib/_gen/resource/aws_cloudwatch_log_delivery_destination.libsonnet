{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_delivery_destination",
          type:: "resource",
          attributes:: ["arn", "delivery_destination_type", "name", "output_format", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOutputFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_format" expected to be of type "string"';
    {
      output_format: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  delivery_destination_configuration:: {
    local block = self,
    new(destinationResourceArn):: (
      {}
      + block.withDestinationResourceArn(destinationResourceArn)
    ),
    withDestinationResourceArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_resource_arn" expected to be of type "string"';
      {
        destination_resource_arn: converted,
      }
    ),
  },
  withDeliveryDestinationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_destination_configuration: value,
    }
  ),
  withDeliveryDestinationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_destination_configuration+: converted,
    }
  ),
}

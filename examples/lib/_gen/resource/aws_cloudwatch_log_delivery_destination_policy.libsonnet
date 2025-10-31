{
  local block = self,
  new(terraformName, deliveryDestinationName, deliveryDestinationPolicy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_delivery_destination_policy",
          type:: "resource",
          attributes:: ["delivery_destination_name", "delivery_destination_policy", "region"],
        },
      },
    }
    + block.withDeliveryDestinationName(deliveryDestinationName)
    + block.withDeliveryDestinationPolicy(deliveryDestinationPolicy)
  ),
  withDeliveryDestinationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_destination_name" expected to be of type "string"';
    {
      delivery_destination_name: converted,
    }
  ),
  withDeliveryDestinationPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_destination_policy" expected to be of type "string"';
    {
      delivery_destination_policy: converted,
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

{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_api_keys",
          type:: "data",
          attributes:: ["customer_id", "id", "include_values", "items", "region"],
        },
      },
    }
  ),
  withCustomerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_id" expected to be of type "string"';
    {
      customer_id: converted,
    }
  ),
  withIncludeValues(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_values" expected to be of type "bool"';
    {
      include_values: converted,
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

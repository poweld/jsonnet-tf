{
  local block = self,
  new(terraformName, calculatorName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_location_route_calculator",
          type:: "data",
          attributes:: ["calculator_arn", "calculator_name", "create_time", "data_source", "description", "id", "region", "tags", "update_time"],
        },
      },
    }
    + block.withCalculatorName(calculatorName)
  ),
  withCalculatorName(value):: (
    local converted = value;
    assert std.isString(converted) : '"calculator_name" expected to be of type "string"';
    {
      calculator_name: converted,
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

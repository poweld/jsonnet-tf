{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_certificate",
          type:: "data",
          attributes:: ["arn", "certificate_type", "customer_override", "customer_override_valid_till", "default_for_new_launches", "id", "latest_valid_till", "region", "thumbprint", "valid_from", "valid_till"],
        },
      },
    }
  ),
  withDefaultForNewLaunches(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_for_new_launches" expected to be of type "bool"';
    {
      default_for_new_launches: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLatestValidTill(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest_valid_till" expected to be of type "bool"';
    {
      latest_valid_till: converted,
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

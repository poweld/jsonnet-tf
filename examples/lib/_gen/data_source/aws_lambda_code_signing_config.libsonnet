{
  local block = self,
  new(terraformName, arn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_code_signing_config",
          type:: "data",
          attributes:: ["allowed_publishers", "arn", "config_id", "description", "id", "last_modified", "policies", "region"],
        },
      },
    }
    + block.withArn(arn)
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_key_registration",
          type:: "resource",
          attributes:: ["aws_account_id", "region"],
        },
      },
    }
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
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
  key_registration:: {
    local block = self,
    new(keyArn):: (
      {}
      + block.withKeyArn(keyArn)
    ),
    withDefaultKey(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"default_key" expected to be of type "bool"';
      {
        default_key: converted,
      }
    ),
    withKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_arn" expected to be of type "string"';
      {
        key_arn: converted,
      }
    ),
  },
  withKeyRegistration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      key_registration: value,
    }
  ),
  withKeyRegistrationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      key_registration+: converted,
    }
  ),
}

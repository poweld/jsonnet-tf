{
  local block = self,
  new(terraformName, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_user_pool",
          type:: "data",
          attributes:: ["account_recovery_setting", "admin_create_user_config", "arn", "auto_verified_attributes", "creation_date", "custom_domain", "deletion_protection", "device_configuration", "domain", "email_configuration", "estimated_number_of_users", "id", "lambda_config", "last_modified_date", "mfa_configuration", "name", "region", "schema_attributes", "sms_authentication_message", "sms_configuration_failure", "sms_verification_message", "tags", "user_pool_add_ons", "user_pool_id", "user_pool_tags", "username_attributes"],
        },
      },
    }
    + block.withUserPoolId(userPoolId)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
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

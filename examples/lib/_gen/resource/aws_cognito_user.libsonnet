{
  local block = self,
  new(terraformName, userPoolId, username):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_user",
          type:: "resource",
          attributes:: ["attributes", "client_metadata", "creation_date", "desired_delivery_mediums", "enabled", "force_alias_creation", "id", "last_modified_date", "message_action", "mfa_setting_list", "password", "preferred_mfa_setting", "region", "status", "sub", "temporary_password", "user_pool_id", "username", "validation_data"],
        },
      },
    }
    + block.withUserPoolId(userPoolId)
    + block.withUsername(username)
  ),
  withAttributes(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attributes" expected to be of type "map"';
    {
      attributes: converted,
    }
  ),
  withClientMetadata(value):: (
    local converted = value;
    assert std.isObject(converted) : '"client_metadata" expected to be of type "map"';
    {
      client_metadata: converted,
    }
  ),
  withDesiredDeliveryMediums(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"desired_delivery_mediums" expected to be of type "set"';
    {
      desired_delivery_mediums: converted,
    }
  ),
  withDesiredDeliveryMediumsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"desired_delivery_mediums" expected to be of type "set"';
    {
      desired_delivery_mediums+: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withForceAliasCreation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_alias_creation" expected to be of type "bool"';
    {
      force_alias_creation: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMessageAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"message_action" expected to be of type "string"';
    {
      message_action: converted,
    }
  ),
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
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
  withTemporaryPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"temporary_password" expected to be of type "string"';
    {
      temporary_password: converted,
    }
  ),
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  withValidationData(value):: (
    local converted = value;
    assert std.isObject(converted) : '"validation_data" expected to be of type "map"';
    {
      validation_data: converted,
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

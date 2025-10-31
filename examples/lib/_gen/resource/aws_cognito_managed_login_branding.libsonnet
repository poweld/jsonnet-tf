{
  local block = self,
  new(terraformName, clientId, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_managed_login_branding",
          type:: "resource",
          attributes:: ["client_id", "managed_login_branding_id", "region", "settings", "settings_all", "use_cognito_provided_values", "user_pool_id"],
        },
      },
    }
    + block.withClientId(clientId)
    + block.withUserPoolId(userPoolId)
  ),
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
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
  withSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
  withUseCognitoProvidedValues(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_cognito_provided_values" expected to be of type "bool"';
    {
      use_cognito_provided_values: converted,
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
  asset:: {
    local block = self,
    new(category, colorMode, extension):: (
      {}
      + block.withCategory(category)
      + block.withColorMode(colorMode)
      + block.withExtension(extension)
    ),
    withBytes(value):: (
      local converted = value;
      assert std.isString(converted) : '"bytes" expected to be of type "string"';
      {
        bytes: converted,
      }
    ),
    withCategory(value):: (
      local converted = value;
      assert std.isString(converted) : '"category" expected to be of type "string"';
      {
        category: converted,
      }
    ),
    withColorMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"color_mode" expected to be of type "string"';
      {
        color_mode: converted,
      }
    ),
    withExtension(value):: (
      local converted = value;
      assert std.isString(converted) : '"extension" expected to be of type "string"';
      {
        extension: converted,
      }
    ),
    withResourceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_id" expected to be of type "string"';
      {
        resource_id: converted,
      }
    ),
  },
  withAsset(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      asset: value,
    }
  ),
  withAssetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      asset+: converted,
    }
  ),
}

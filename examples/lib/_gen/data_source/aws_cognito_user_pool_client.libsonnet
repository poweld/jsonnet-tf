{
  local block = self,
  new(terraformName, clientId, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_user_pool_client",
          type:: "data",
          attributes:: ["access_token_validity", "allowed_oauth_flows", "allowed_oauth_flows_user_pool_client", "allowed_oauth_scopes", "analytics_configuration", "callback_urls", "client_id", "client_secret", "default_redirect_uri", "enable_propagate_additional_user_context_data", "enable_token_revocation", "explicit_auth_flows", "generate_secret", "id", "id_token_validity", "logout_urls", "name", "prevent_user_existence_errors", "read_attributes", "refresh_token_rotation", "refresh_token_validity", "region", "supported_identity_providers", "token_validity_units", "user_pool_id", "write_attributes"],
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

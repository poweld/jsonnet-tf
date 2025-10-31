{
  local block = self,
  new(terraformName, providerDetails, providerName, providerType, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_identity_provider",
          type:: "resource",
          attributes:: ["attribute_mapping", "id", "idp_identifiers", "provider_details", "provider_name", "provider_type", "region", "user_pool_id"],
        },
      },
    }
    + block.withProviderDetails(providerDetails)
    + block.withProviderName(providerName)
    + block.withProviderType(providerType)
    + block.withUserPoolId(userPoolId)
  ),
  withAttributeMapping(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attribute_mapping" expected to be of type "map"';
    {
      attribute_mapping: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdpIdentifiers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"idp_identifiers" expected to be of type "list"';
    {
      idp_identifiers: converted,
    }
  ),
  withIdpIdentifiersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"idp_identifiers" expected to be of type "list"';
    {
      idp_identifiers+: converted,
    }
  ),
  withProviderDetails(value):: (
    local converted = value;
    assert std.isObject(converted) : '"provider_details" expected to be of type "map"';
    {
      provider_details: converted,
    }
  ),
  withProviderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
    }
  ),
  withProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
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

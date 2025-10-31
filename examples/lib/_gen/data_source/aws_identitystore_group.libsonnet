{
  local block = self,
  new(terraformName, identityStoreId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_identitystore_group",
          type:: "data",
          attributes:: ["description", "display_name", "external_ids", "group_id", "id", "identity_store_id", "region"],
        },
      },
    }
    + block.withIdentityStoreId(identityStoreId)
  ),
  withGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityStoreId(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_store_id" expected to be of type "string"';
    {
      identity_store_id: converted,
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
  alternate_identifier:: {
    local block = self,
    new():: (
      {}
    ),
    external_id:: {
      local block = self,
      new(id, issuer):: (
        {}
        + block.withId(id)
        + block.withIssuer(issuer)
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      withIssuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
    },
    unique_attribute:: {
      local block = self,
      new(attributePath, attributeValue):: (
        {}
        + block.withAttributePath(attributePath)
        + block.withAttributeValue(attributeValue)
      ),
      withAttributePath(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_path" expected to be of type "string"';
        {
          attribute_path: converted,
        }
      ),
      withAttributeValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_value" expected to be of type "string"';
        {
          attribute_value: converted,
        }
      ),
    },
    withExternalId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        external_id: value,
      }
    ),
    withUniqueAttribute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unique_attribute: value,
      }
    ),
    withExternalIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        external_id+: converted,
      }
    ),
    withUniqueAttributeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unique_attribute+: converted,
      }
    ),
  },
  withAlternateIdentifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alternate_identifier: value,
    }
  ),
  withAlternateIdentifierMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alternate_identifier+: converted,
    }
  ),
}

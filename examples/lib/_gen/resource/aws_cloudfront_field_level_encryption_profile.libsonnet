{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_field_level_encryption_profile",
          type:: "resource",
          attributes:: ["arn", "caller_reference", "comment", "etag", "id", "name"],
        },
      },
    }
    + block.withName(name)
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  encryption_entities:: {
    local block = self,
    new():: (
      {}
    ),
    items:: {
      local block = self,
      new(providerId, publicKeyId):: (
        {}
        + block.withProviderId(providerId)
        + block.withPublicKeyId(publicKeyId)
      ),
      withProviderId(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider_id" expected to be of type "string"';
        {
          provider_id: converted,
        }
      ),
      withPublicKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"public_key_id" expected to be of type "string"';
        {
          public_key_id: converted,
        }
      ),
      field_patterns:: {
        local block = self,
        new():: (
          {}
        ),
        withItems(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
          {
            items: converted,
          }
        ),
        withItemsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
          {
            items+: converted,
          }
        ),
      },
      withFieldPatterns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_patterns: value,
        }
      ),
      withFieldPatternsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_patterns+: converted,
        }
      ),
    },
    withItems(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    withItemsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
  },
  withEncryptionEntities(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_entities: value,
    }
  ),
  withEncryptionEntitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_entities+: converted,
    }
  ),
}

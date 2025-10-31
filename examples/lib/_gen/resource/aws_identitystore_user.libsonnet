{
  local block = self,
  new(terraformName, displayName, identityStoreId, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_identitystore_user",
          type:: "resource",
          attributes:: ["display_name", "external_ids", "id", "identity_store_id", "locale", "nickname", "preferred_language", "profile_url", "region", "timezone", "title", "user_id", "user_name", "user_type"],
        },
      },
    }
    + block.withDisplayName(displayName)
    + block.withIdentityStoreId(identityStoreId)
    + block.withUserName(userName)
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
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
  withLocale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  withNickname(value):: (
    local converted = value;
    assert std.isString(converted) : '"nickname" expected to be of type "string"';
    {
      nickname: converted,
    }
  ),
  withPreferredLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_language" expected to be of type "string"';
    {
      preferred_language: converted,
    }
  ),
  withProfileUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_url" expected to be of type "string"';
    {
      profile_url: converted,
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
  withTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  withTitle(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  withUserType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  addresses:: {
    local block = self,
    new():: (
      {}
    ),
    withCountry(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    withFormatted(value):: (
      local converted = value;
      assert std.isString(converted) : '"formatted" expected to be of type "string"';
      {
        formatted: converted,
      }
    ),
    withLocality(value):: (
      local converted = value;
      assert std.isString(converted) : '"locality" expected to be of type "string"';
      {
        locality: converted,
      }
    ),
    withPostalCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    withPrimary(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"primary" expected to be of type "bool"';
      {
        primary: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    withStreetAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"street_address" expected to be of type "string"';
      {
        street_address: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  emails:: {
    local block = self,
    new():: (
      {}
    ),
    withPrimary(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"primary" expected to be of type "bool"';
      {
        primary: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  name:: {
    local block = self,
    new(familyName, givenName):: (
      {}
      + block.withFamilyName(familyName)
      + block.withGivenName(givenName)
    ),
    withFamilyName(value):: (
      local converted = value;
      assert std.isString(converted) : '"family_name" expected to be of type "string"';
      {
        family_name: converted,
      }
    ),
    withFormatted(value):: (
      local converted = value;
      assert std.isString(converted) : '"formatted" expected to be of type "string"';
      {
        formatted: converted,
      }
    ),
    withGivenName(value):: (
      local converted = value;
      assert std.isString(converted) : '"given_name" expected to be of type "string"';
      {
        given_name: converted,
      }
    ),
    withHonorificPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"honorific_prefix" expected to be of type "string"';
      {
        honorific_prefix: converted,
      }
    ),
    withHonorificSuffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"honorific_suffix" expected to be of type "string"';
      {
        honorific_suffix: converted,
      }
    ),
    withMiddleName(value):: (
      local converted = value;
      assert std.isString(converted) : '"middle_name" expected to be of type "string"';
      {
        middle_name: converted,
      }
    ),
  },
  phone_numbers:: {
    local block = self,
    new():: (
      {}
    ),
    withPrimary(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"primary" expected to be of type "bool"';
      {
        primary: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withAddresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      addresses: value,
    }
  ),
  withEmails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emails: value,
    }
  ),
  withName(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name: value,
    }
  ),
  withPhoneNumbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_numbers: value,
    }
  ),
  withAddressesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      addresses+: converted,
    }
  ),
  withEmailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emails+: converted,
    }
  ),
  withNameMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name+: converted,
    }
  ),
  withPhoneNumbersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_numbers+: converted,
    }
  ),
}

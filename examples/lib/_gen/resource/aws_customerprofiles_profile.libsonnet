{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_customerprofiles_profile",
          type:: "resource",
          attributes:: ["account_number", "additional_information", "attributes", "birth_date", "business_email_address", "business_name", "business_phone_number", "domain_name", "email_address", "first_name", "gender_string", "home_phone_number", "id", "last_name", "middle_name", "mobile_phone_number", "party_type_string", "personal_email_address", "phone_number", "region"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withAccountNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_number" expected to be of type "string"';
    {
      account_number: converted,
    }
  ),
  withAdditionalInformation(value):: (
    local converted = value;
    assert std.isString(converted) : '"additional_information" expected to be of type "string"';
    {
      additional_information: converted,
    }
  ),
  withAttributes(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attributes" expected to be of type "map"';
    {
      attributes: converted,
    }
  ),
  withBirthDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"birth_date" expected to be of type "string"';
    {
      birth_date: converted,
    }
  ),
  withBusinessEmailAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"business_email_address" expected to be of type "string"';
    {
      business_email_address: converted,
    }
  ),
  withBusinessName(value):: (
    local converted = value;
    assert std.isString(converted) : '"business_name" expected to be of type "string"';
    {
      business_name: converted,
    }
  ),
  withBusinessPhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"business_phone_number" expected to be of type "string"';
    {
      business_phone_number: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withEmailAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_address" expected to be of type "string"';
    {
      email_address: converted,
    }
  ),
  withFirstName(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  withGenderString(value):: (
    local converted = value;
    assert std.isString(converted) : '"gender_string" expected to be of type "string"';
    {
      gender_string: converted,
    }
  ),
  withHomePhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_phone_number" expected to be of type "string"';
    {
      home_phone_number: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLastName(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  withMiddleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"middle_name" expected to be of type "string"';
    {
      middle_name: converted,
    }
  ),
  withMobilePhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"mobile_phone_number" expected to be of type "string"';
    {
      mobile_phone_number: converted,
    }
  ),
  withPartyTypeString(value):: (
    local converted = value;
    assert std.isString(converted) : '"party_type_string" expected to be of type "string"';
    {
      party_type_string: converted,
    }
  ),
  withPersonalEmailAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"personal_email_address" expected to be of type "string"';
    {
      personal_email_address: converted,
    }
  ),
  withPhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number" expected to be of type "string"';
    {
      phone_number: converted,
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
  address:: {
    local block = self,
    new():: (
      {}
    ),
    withAddress_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    withAddress_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    withAddress_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    withAddress_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    withCity(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    withCountry(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    withCounty(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    withPostalCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    withProvince(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  billing_address:: {
    local block = self,
    new():: (
      {}
    ),
    withAddress_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    withAddress_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    withAddress_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    withAddress_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    withCity(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    withCountry(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    withCounty(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    withPostalCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    withProvince(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  mailing_address:: {
    local block = self,
    new():: (
      {}
    ),
    withAddress_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    withAddress_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    withAddress_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    withAddress_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    withCity(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    withCountry(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    withCounty(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    withPostalCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    withProvince(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  shipping_address:: {
    local block = self,
    new():: (
      {}
    ),
    withAddress_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    withAddress_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    withAddress_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    withAddress_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    withCity(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    withCountry(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    withCounty(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    withPostalCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    withProvince(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  withAddress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      address: value,
    }
  ),
  withBillingAddress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_address: value,
    }
  ),
  withMailingAddress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mailing_address: value,
    }
  ),
  withShippingAddress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shipping_address: value,
    }
  ),
  withAddressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      address+: converted,
    }
  ),
  withBillingAddressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_address+: converted,
    }
  ),
  withMailingAddressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mailing_address+: converted,
    }
  ),
  withShippingAddressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shipping_address+: converted,
    }
  ),
}

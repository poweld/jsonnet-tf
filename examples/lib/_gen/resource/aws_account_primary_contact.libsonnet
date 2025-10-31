{
  local block = self,
  new(terraformName, addressLine_1, city, countryCode, fullName, phoneNumber, postalCode):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_account_primary_contact",
          type:: "resource",
          attributes:: ["account_id", "address_line_1", "address_line_2", "address_line_3", "city", "company_name", "country_code", "district_or_county", "full_name", "id", "phone_number", "postal_code", "state_or_region", "website_url"],
        },
      },
    }
    + block.withAddressLine_1(addressLine_1)
    + block.withCity(city)
    + block.withCountryCode(countryCode)
    + block.withFullName(fullName)
    + block.withPhoneNumber(phoneNumber)
    + block.withPostalCode(postalCode)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withAddressLine_1(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_line_1" expected to be of type "string"';
    {
      address_line_1: converted,
    }
  ),
  withAddressLine_2(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_line_2" expected to be of type "string"';
    {
      address_line_2: converted,
    }
  ),
  withAddressLine_3(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_line_3" expected to be of type "string"';
    {
      address_line_3: converted,
    }
  ),
  withCity(value):: (
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  withCompanyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"company_name" expected to be of type "string"';
    {
      company_name: converted,
    }
  ),
  withCountryCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"country_code" expected to be of type "string"';
    {
      country_code: converted,
    }
  ),
  withDistrictOrCounty(value):: (
    local converted = value;
    assert std.isString(converted) : '"district_or_county" expected to be of type "string"';
    {
      district_or_county: converted,
    }
  ),
  withFullName(value):: (
    local converted = value;
    assert std.isString(converted) : '"full_name" expected to be of type "string"';
    {
      full_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number" expected to be of type "string"';
    {
      phone_number: converted,
    }
  ),
  withPostalCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_code" expected to be of type "string"';
    {
      postal_code: converted,
    }
  ),
  withStateOrRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"state_or_region" expected to be of type "string"';
    {
      state_or_region: converted,
    }
  ),
  withWebsiteUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_url" expected to be of type "string"';
    {
      website_url: converted,
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

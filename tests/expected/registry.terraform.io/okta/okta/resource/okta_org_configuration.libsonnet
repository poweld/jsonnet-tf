{
  local block = self,
  new(terraformName, companyName):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_org_configuration",
        type:: "resource",
        attributes:: ["address_1", "address_2", "billing_contact_user", "city", "company_name", "country", "end_user_support_help_url", "expires_at", "id", "logo", "opt_out_communication_emails", "phone_number", "postal_code", "state", "subdomain", "support_phone_number", "technical_contact_user", "website"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withCompanyName(companyName)
  ),
  "#withAddress_1":: "Primary address of org",
  withAddress_1(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_1" expected to be of type "string"';
    {
      address_1: converted,
    }
  ),
  "#withAddress_2":: "Secondary address of org",
  withAddress_2(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_2" expected to be of type "string"';
    {
      address_2: converted,
    }
  ),
  "#withBillingContactUser":: "User ID representing the billing contact",
  withBillingContactUser(value):: (
    local converted = value;
    assert std.isString(converted) : '"billing_contact_user" expected to be of type "string"';
    {
      billing_contact_user: converted,
    }
  ),
  "#withCity":: "City of org",
  withCity(value):: (
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  "#withCompanyName":: "Name of org",
  withCompanyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"company_name" expected to be of type "string"';
    {
      company_name: converted,
    }
  ),
  "#withCountry":: "Country of org",
  withCountry(value):: (
    local converted = value;
    assert std.isString(converted) : '"country" expected to be of type "string"';
    {
      country: converted,
    }
  ),
  "#withEndUserSupportHelpUrl":: "Support link of org",
  withEndUserSupportHelpUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_user_support_help_url" expected to be of type "string"';
    {
      end_user_support_help_url: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLogo":: "Logo of org. The file must be in PNG, JPG, or GIF format and less than 1 MB in size. For best results use landscape orientation, a transparent background, and a minimum size of 420px by 120px to prevent upscaling.",
  withLogo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  "#withOptOutCommunicationEmails":: "Indicates whether the org's users receive Okta Communication emails",
  withOptOutCommunicationEmails(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"opt_out_communication_emails" expected to be of type "bool"';
    {
      opt_out_communication_emails: converted,
    }
  ),
  "#withPhoneNumber":: "Support help phone of org",
  withPhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number" expected to be of type "string"';
    {
      phone_number: converted,
    }
  ),
  "#withPostalCode":: "Postal code of org",
  withPostalCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_code" expected to be of type "string"';
    {
      postal_code: converted,
    }
  ),
  "#withState":: "State of org",
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  "#withSupportPhoneNumber":: "Support help phone of org",
  withSupportPhoneNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_phone_number" expected to be of type "string"';
    {
      support_phone_number: converted,
    }
  ),
  "#withTechnicalContactUser":: "User ID representing the technical contact",
  withTechnicalContactUser(value):: (
    local converted = value;
    assert std.isString(converted) : '"technical_contact_user" expected to be of type "string"';
    {
      technical_contact_user: converted,
    }
  ),
  "#withWebsite":: "The org's website",
  withWebsite(value):: (
    local converted = value;
    assert std.isString(converted) : '"website" expected to be of type "string"';
    {
      website: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}

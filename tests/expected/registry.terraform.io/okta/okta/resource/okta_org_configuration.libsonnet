{
  local block = self,

  new(terraformName, companyName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_org_configuration",
          type:: "resource",
          attributes:: ["address_1", "address_2", "billing_contact_user", "city", "company_name", "country", "end_user_support_help_url", "expires_at", "id", "logo", "opt_out_communication_emails", "phone_number", "postal_code", "state", "subdomain", "support_phone_number", "technical_contact_user", "website"],
        },
      },
    }
    + block.withCompanyName(companyName)
  ),

  "#withAddress_1":: "Primary address of org",
  withAddress_1(value):: (
    assert std.isString(value) : '"address_1" expected to be of type "string"';

    {
      address_1: value,
    }
  ),

  "#withAddress_2":: "Secondary address of org",
  withAddress_2(value):: (
    assert std.isString(value) : '"address_2" expected to be of type "string"';

    {
      address_2: value,
    }
  ),

  "#withBillingContactUser":: "User ID representing the billing contact",
  withBillingContactUser(value):: (
    assert std.isString(value) : '"billing_contact_user" expected to be of type "string"';

    {
      billing_contact_user: value,
    }
  ),

  "#withCity":: "City of org",
  withCity(value):: (
    assert std.isString(value) : '"city" expected to be of type "string"';

    {
      city: value,
    }
  ),

  "#withCompanyName":: "Name of org",
  withCompanyName(value):: (
    assert std.isString(value) : '"company_name" expected to be of type "string"';

    {
      company_name: value,
    }
  ),

  "#withCountry":: "Country of org",
  withCountry(value):: (
    assert std.isString(value) : '"country" expected to be of type "string"';

    {
      country: value,
    }
  ),

  "#withEndUserSupportHelpUrl":: "Support link of org",
  withEndUserSupportHelpUrl(value):: (
    assert std.isString(value) : '"end_user_support_help_url" expected to be of type "string"';

    {
      end_user_support_help_url: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withLogo":: "Logo of org. The file must be in PNG, JPG, or GIF format and less than 1 MB in size. For best results use landscape orientation, a transparent background, and a minimum size of 420px by 120px to prevent upscaling.",
  withLogo(value):: (
    assert std.isString(value) : '"logo" expected to be of type "string"';

    {
      logo: value,
    }
  ),

  "#withOptOutCommunicationEmails":: "Indicates whether the org's users receive Okta Communication emails",
  withOptOutCommunicationEmails(value):: (
    assert std.isBoolean(value) : '"opt_out_communication_emails" expected to be of type "bool"';

    {
      opt_out_communication_emails: value,
    }
  ),

  "#withPhoneNumber":: "Support help phone of org",
  withPhoneNumber(value):: (
    assert std.isString(value) : '"phone_number" expected to be of type "string"';

    {
      phone_number: value,
    }
  ),

  "#withPostalCode":: "Postal code of org",
  withPostalCode(value):: (
    assert std.isString(value) : '"postal_code" expected to be of type "string"';

    {
      postal_code: value,
    }
  ),

  "#withState":: "State of org",
  withState(value):: (
    assert std.isString(value) : '"state" expected to be of type "string"';

    {
      state: value,
    }
  ),

  "#withSupportPhoneNumber":: "Support help phone of org",
  withSupportPhoneNumber(value):: (
    assert std.isString(value) : '"support_phone_number" expected to be of type "string"';

    {
      support_phone_number: value,
    }
  ),

  "#withTechnicalContactUser":: "User ID representing the technical contact",
  withTechnicalContactUser(value):: (
    assert std.isString(value) : '"technical_contact_user" expected to be of type "string"';

    {
      technical_contact_user: value,
    }
  ),

  "#withWebsite":: "The org's website",
  withWebsite(value):: (
    assert std.isString(value) : '"website" expected to be of type "string"';

    {
      website: value,
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

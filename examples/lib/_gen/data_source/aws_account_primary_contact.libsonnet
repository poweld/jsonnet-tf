{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_account_primary_contact",
          type:: "data",
          attributes:: ["account_id", "address_line_1", "address_line_2", "address_line_3", "city", "company_name", "country_code", "district_or_county", "full_name", "phone_number", "postal_code", "state_or_region", "website_url"],
        },
      },
    }
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
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

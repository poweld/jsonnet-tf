{
  local block = self,

  new(terraformName, fromAddress, fromName, subdomain):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_sender",
          type:: "resource",
          attributes:: ["dns_records", "from_address", "from_name", "id", "status", "subdomain"],
        },
      },
    }
    + block.withFromAddress(fromAddress)
    + block.withFromName(fromName)
    + block.withSubdomain(subdomain)
  ),

  "#withFromAddress":: "Email address to send from ",
  withFromAddress(value):: (
    assert std.isString(value) : '"from_address" expected to be of type "string"';

    {
      from_address: value,
    }
  ),

  "#withFromName":: "Name of sender",
  withFromName(value):: (
    assert std.isString(value) : '"from_name" expected to be of type "string"';

    {
      from_name: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withSubdomain":: "Mail domain to send from",
  withSubdomain(value):: (
    assert std.isString(value) : '"subdomain" expected to be of type "string"';

    {
      subdomain: value,
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

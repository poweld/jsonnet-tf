{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_smtp_server",
          type:: "data",
          attributes:: ["alias", "enabled", "host", "id", "port", "username"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withId(id)
  ),
  "#withId":: "The ID of the SMTP server.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}

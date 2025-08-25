{
  local block = self,
  new(name, id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_smtp_server",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["alias", "enabled", "host", "id", "port", "username"],
      },
    }
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

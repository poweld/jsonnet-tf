{
  local block = self,
  new(terraformName, alias, host, password, port, username):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_email_smtp_server",
        type:: "resource",
        attributes:: ["alias", "enabled", "host", "id", "password", "port", "username"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAlias(alias)
    + block.withHost(host)
    + block.withPassword(password)
    + block.withPort(port)
    + block.withUsername(username)
  ),
  "#withAlias":: "Human-readable name for your SMTP server.",
  withAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  "#withEnabled":: "If true, routes all email traffic through your SMTP server.",
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  "#withHost":: "Hostname or IP address of your SMTP server.",
  withHost(value):: (
    local converted = value;
    assert std.isString(converted) : '"host" expected to be of type "string"';
    {
      host: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPassword":: "User name of the email domain.",
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  "#withPort":: "Port number of your SMTP server.",
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  "#withUsername":: "Display name of the email domain.",
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}

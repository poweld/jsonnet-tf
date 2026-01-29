{
  local block = self,

  new(terraformName, alias, host, password, port, username):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_smtp_server",
          type:: "resource",
          attributes:: ["alias", "enabled", "host", "id", "password", "port", "username"],
        },
      },
    }
    + block.withAlias(alias)
    + block.withHost(host)
    + block.withPassword(password)
    + block.withPort(port)
    + block.withUsername(username)
  ),

  "#withAlias":: "Human-readable name for your SMTP server.",
  withAlias(value):: (
    assert std.isString(value) : '"alias" expected to be of type "string"';

    {
      alias: value,
    }
  ),

  "#withEnabled":: "If true, routes all email traffic through your SMTP server.",
  withEnabled(value):: (
    assert std.isBoolean(value) : '"enabled" expected to be of type "bool"';

    {
      enabled: value,
    }
  ),

  "#withHost":: "Hostname or IP address of your SMTP server.",
  withHost(value):: (
    assert std.isString(value) : '"host" expected to be of type "string"';

    {
      host: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withPassword":: "User name of the email domain.",
  withPassword(value):: (
    assert std.isString(value) : '"password" expected to be of type "string"';

    {
      password: value,
    }
  ),

  "#withPort":: "Port number of your SMTP server.",
  withPort(value):: (
    assert std.isNumber(value) : '"port" expected to be of type "number"';

    {
      port: value,
    }
  ),

  "#withUsername":: "Display name of the email domain.",
  withUsername(value):: (
    assert std.isString(value) : '"username" expected to be of type "string"';

    {
      username: value,
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

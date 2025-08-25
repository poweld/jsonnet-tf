{
  local block = self,
  new(name, x5c):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_idp_saml_key",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["created", "expires_at", "id", "kid", "kty", "use", "x5c", "x5t_s256"],
      },
    }
    + block.withX5c(x5c)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withX5c":: "base64-encoded X.509 certificate chain with DER encoding",
  withX5c(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"x5c" expected to be of type "set"';
    {
      x5c: converted,
    }
  ),
  "#withX5cMixin":: "base64-encoded X.509 certificate chain with DER encoding",
  withX5cMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"x5c" expected to be of type "set"';
    {
      x5c+: converted,
    }
  ),
}

{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_authenticator",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "id", "key", "provider_auth_port", "provider_hostname", "provider_instance_id", "provider_json", "provider_type", "provider_user_name_template", "settings", "status", "type"],
      },
    }
    + block.withName(name)
  ),
  "#withId":: "ID of the authenticator.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "A human-readable string that identifies the authenticator.",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withName":: "Name of the authenticator.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}

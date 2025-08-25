{
  local block = self,
  new(name, app_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_signon_policy",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "app_id", "id"],
      },
    }
    + block.withName(name)
    + block.withAppId(app_id)
  ),
  "#withAppId":: "App ID",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Policy name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}

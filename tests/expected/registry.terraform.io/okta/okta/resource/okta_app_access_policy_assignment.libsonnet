{
  local block = self,
  new(name, app_id, policy_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_access_policy_assignment",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["app_id", "id", "policy_id"],
      },
    }
    + block.withAppId(app_id)
    + block.withPolicyId(policy_id)
  ),
  "#withAppId":: "The application ID; this value is immutable and can not be updated.",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  "#withPolicyId":: "The access policy ID.",
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
}

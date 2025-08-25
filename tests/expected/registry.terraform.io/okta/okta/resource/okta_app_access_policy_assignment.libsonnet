{
  local block = self,
  new(terraformName, appId, policyId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_access_policy_assignment",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["app_id", "id", "policy_id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAppId(appId)
    + block.withPolicyId(policyId)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}

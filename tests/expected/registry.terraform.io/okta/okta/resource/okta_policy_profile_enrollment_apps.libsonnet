{
  local block = self,
  new(terraformName, policyId):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_policy_profile_enrollment_apps",
        type:: "resource",
        attributes:: ["apps", "default_policy_id", "id", "policy_id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withPolicyId(policyId)
  ),
  "#withApps":: "List of app IDs to be added to this policy",
  withApps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps: converted,
    }
  ),
  "#withAppsMixin":: "List of app IDs to be added to this policy",
  withAppsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPolicyId":: "ID of the enrollment policy.",
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

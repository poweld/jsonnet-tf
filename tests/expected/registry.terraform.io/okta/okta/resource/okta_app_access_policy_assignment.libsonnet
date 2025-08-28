{
  local block = self,
  new(terraformName, appId, policyId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_access_policy_assignment",
          type:: "resource",
          attributes:: ["app_id", "id", "policy_id"],
        },
      },
    }
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
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}

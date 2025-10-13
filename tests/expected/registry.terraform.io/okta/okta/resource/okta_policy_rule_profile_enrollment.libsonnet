{
  local block = self,
  new(terraformName, policyId, unknownUserAction):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_rule_profile_enrollment",
          type:: "resource",
          attributes:: ["access", "email_verification", "enroll_authenticator_types", "id", "inline_hook_id", "name", "policy_id", "progressive_profiling_action", "status", "target_group_id", "ui_schema_id", "unknown_user_action"],
        },
      },
    }
    + block.withPolicyId(policyId)
    + block.withUnknownUserAction(unknownUserAction)
  ),
  "#withAccess":: "Allow or deny access based on the rule conditions. Valid values are: `ALLOW`, `DENY`. Default: `ALLOW`.",
  withAccess(value):: (
    local converted = value;
    assert std.isString(converted) : '"access" expected to be of type "string"';
    {
      access: converted,
    }
  ),
  "#withEmailVerification":: "Indicates whether email verification should occur before access is granted. Default: `true`.",
  withEmailVerification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"email_verification" expected to be of type "bool"';
    {
      email_verification: converted,
    }
  ),
  "#withEnrollAuthenticatorTypes":: "Enrolls authenticator types",
  withEnrollAuthenticatorTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enroll_authenticator_types" expected to be of type "set"';
    {
      enroll_authenticator_types: converted,
    }
  ),
  "#withEnrollAuthenticatorTypesMixin":: "Enrolls authenticator types",
  withEnrollAuthenticatorTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enroll_authenticator_types" expected to be of type "set"';
    {
      enroll_authenticator_types+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withInlineHookId":: "ID of a Registration Inline Hook",
  withInlineHookId(value):: (
    local converted = value;
    assert std.isString(converted) : '"inline_hook_id" expected to be of type "string"';
    {
      inline_hook_id: converted,
    }
  ),
  "#withPolicyId":: "ID of the policy",
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  "#withProgressiveProfilingAction":: "Enabled or disabled progressive profiling action rule conditions: `ENABLED` or `DISABLED`. Default: `DISABLED`",
  withProgressiveProfilingAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"progressive_profiling_action" expected to be of type "string"';
    {
      progressive_profiling_action: converted,
    }
  ),
  "#withTargetGroupId":: "The ID of a Group that this User should be added to",
  withTargetGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_group_id" expected to be of type "string"';
    {
      target_group_id: converted,
    }
  ),
  "#withUiSchemaId":: "Value created by the backend. If present all policy updates must include this attribute/value.",
  withUiSchemaId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ui_schema_id" expected to be of type "string"';
    {
      ui_schema_id: converted,
    }
  ),
  "#withUnknownUserAction":: "Which action should be taken if this User is new. Valid values are: `DENY`, `REGISTER`",
  withUnknownUserAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"unknown_user_action" expected to be of type "string"';
    {
      unknown_user_action: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  profileAttributes:: {
    local block = self,
    new(label, name):: (
      {}
      + block.withLabel(label)
      + block.withName(name)
    ),
    "#withLabel":: "A display-friendly label for this property",
    withLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"label" expected to be of type "string"';
      {
        label: converted,
      }
    ),
    "#withName":: "The name of a User Profile property",
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    "#withRequired":: "Indicates if this property is required for enrollment",
    withRequired(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
  },
  withProfileAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      profile_attributes: value,
    }
  ),
  withProfileAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      profile_attributes+: converted,
    }
  ),
}

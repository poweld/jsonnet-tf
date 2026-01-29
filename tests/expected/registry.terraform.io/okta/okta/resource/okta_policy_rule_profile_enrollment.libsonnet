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
    assert std.isString(value) : '"access" expected to be of type "string"';

    {
      access: value,
    }
  ),

  "#withEmailVerification":: "Indicates whether email verification should occur before access is granted. Default: `true`.",
  withEmailVerification(value):: (
    assert std.isBoolean(value) : '"email_verification" expected to be of type "bool"';

    {
      email_verification: value,
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
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withInlineHookId":: "ID of a Registration Inline Hook",
  withInlineHookId(value):: (
    assert std.isString(value) : '"inline_hook_id" expected to be of type "string"';

    {
      inline_hook_id: value,
    }
  ),

  "#withPolicyId":: "ID of the policy",
  withPolicyId(value):: (
    assert std.isString(value) : '"policy_id" expected to be of type "string"';

    {
      policy_id: value,
    }
  ),

  "#withProgressiveProfilingAction":: "Enabled or disabled progressive profiling action rule conditions: `ENABLED` or `DISABLED`. Default: `DISABLED`",
  withProgressiveProfilingAction(value):: (
    assert std.isString(value) : '"progressive_profiling_action" expected to be of type "string"';

    {
      progressive_profiling_action: value,
    }
  ),

  "#withTargetGroupId":: "The ID of a Group that this User should be added to",
  withTargetGroupId(value):: (
    assert std.isString(value) : '"target_group_id" expected to be of type "string"';

    {
      target_group_id: value,
    }
  ),

  "#withUiSchemaId":: "Value created by the backend. If present all policy updates must include this attribute/value.",
  withUiSchemaId(value):: (
    assert std.isString(value) : '"ui_schema_id" expected to be of type "string"';

    {
      ui_schema_id: value,
    }
  ),

  "#withUnknownUserAction":: "Which action should be taken if this User is new. Valid values are: `DENY`, `REGISTER`",
  withUnknownUserAction(value):: (
    assert std.isString(value) : '"unknown_user_action" expected to be of type "string"';

    {
      unknown_user_action: value,
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
      assert std.isString(value) : '"label" expected to be of type "string"';

      {
        label: value,
      }
    ),

    "#withName":: "The name of a User Profile property",
    withName(value):: (
      assert std.isString(value) : '"name" expected to be of type "string"';

      {
        name: value,
      }
    ),

    "#withRequired":: "Indicates if this property is required for enrollment",
    withRequired(value):: (
      assert std.isBoolean(value) : '"required" expected to be of type "bool"';

      {
        required: value,
      }
    ),
  },
  withProfileAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      profile_attributes: converted,
    }
  ),
  withProfileAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      profile_attributes+: converted,
    }
  ),
}

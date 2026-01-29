{
  local block = self,

  new(terraformName, sourceId, targetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_profile_mapping",
          type:: "resource",
          attributes:: ["always_apply", "delete_when_absent", "id", "source_id", "source_name", "source_type", "target_id", "target_name", "target_type"],
        },
      },
    }
    + block.withSourceId(sourceId)
    + block.withTargetId(targetId)
  ),

  "#withAlwaysApply":: "Whether apply the changes to all users with this profile after updating or creating the these mappings.  \t~> **WARNING:**: 'always_apply' is incompatible with OAuth 2.0 authentication and will be ignored when using that type of authentication. \t~> **WARNING:** 'always_apply' makes use of an internal/private Okta API endpoint that could change without notice rendering this resource inoperable.",
  withAlwaysApply(value):: (
    assert std.isBoolean(value) : '"always_apply" expected to be of type "bool"';

    {
      always_apply: value,
    }
  ),

  "#withDeleteWhenAbsent":: "When turned on this flag will trigger the provider to delete mapping properties that are not defined in config. By default, we do not delete missing properties.",
  withDeleteWhenAbsent(value):: (
    assert std.isBoolean(value) : '"delete_when_absent" expected to be of type "bool"';

    {
      delete_when_absent: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withSourceId":: "The source id of the mapping to manage.",
  withSourceId(value):: (
    assert std.isString(value) : '"source_id" expected to be of type "string"';

    {
      source_id: value,
    }
  ),

  "#withTargetId":: "The target id of the mapping to manage.",
  withTargetId(value):: (
    assert std.isString(value) : '"target_id" expected to be of type "string"';

    {
      target_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  mappings:: {
    local block = self,

    new(expression, id):: (
      {}
      + block.withExpression(expression)
      + block.withId(id)
    ),

    withExpression(value):: (
      assert std.isString(value) : '"expression" expected to be of type "string"';

      {
        expression: value,
      }
    ),

    "#withId":: "The mapping property key.",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    withPushStatus(value):: (
      assert std.isString(value) : '"push_status" expected to be of type "string"';

      {
        push_status: value,
      }
    ),
  },
  withMappings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mappings: converted,
    }
  ),
  withMappingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mappings+: converted,
    }
  ),
}

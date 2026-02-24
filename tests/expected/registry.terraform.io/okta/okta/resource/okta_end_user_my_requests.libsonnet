{
  local block = self,

  new(terraformName, entryId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_end_user_my_requests",
          type:: "resource",
          attributes:: ["entry_id", "id", "status"],
        },
      },
    }
    + block.withEntryId(entryId)
  ),

  "#withEntryId":: "The ID of the catalog entry",
  withEntryId(value):: (
    assert std.isString(value) : '"entry_id" expected to be of type "string"';

    {
      entry_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  requesterFieldValues:: {
    local block = self,

    new(id):: (
      {}
      + block.withId(id)
    ),

    "#withId":: "The ID of a requesterField.",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    "#withLabel":: "A human-readable description of requesterField. It's used for display purposes and is optional",
    withLabel(value):: (
      assert std.isString(value) : '"label" expected to be of type "string"';

      {
        label: value,
      }
    ),

    "#withType":: "Type of value for the requester field.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    "#withValue":: "The value of requesterField, which depends on the type of the field",
    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),

    "#withValues":: "The values of requesterField with the type MULTISELECT. If the field type is MULTISELECT, this property is required.",
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';

      {
        values: converted,
      }
    ),

    "#withValuesMixin":: "The values of requesterField with the type MULTISELECT. If the field type is MULTISELECT, this property is required.",
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';

      {
        values+: converted,
      }
    ),
  },
  withRequesterFieldValues(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester_field_values: converted,
    }
  ),
  withRequesterFieldValuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester_field_values+: converted,
    }
  ),
}

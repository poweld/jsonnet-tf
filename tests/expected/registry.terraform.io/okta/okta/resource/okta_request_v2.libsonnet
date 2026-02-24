{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_v2",
          type:: "resource",
          attributes:: ["access_duration", "created", "created_by", "grant_status", "granted", "id", "last_updated", "last_updated_by", "resolved", "revocation_scheduled", "revocation_status", "revoked", "status"],
        },
      },
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  requested:: {
    local block = self,

    new(entryId, type):: (
      {}
      + block.withEntryId(entryId)
      + block.withType(type)
    ),

    "#withEntryId":: "The ID of the resource catalog entry.",
    withEntryId(value):: (
      assert std.isString(value) : '"entry_id" expected to be of type "string"';

      {
        entry_id: value,
      }
    ),

    "#withType":: "The type of the resource.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  requestedFor:: {
    local block = self,

    new(externalId, type):: (
      {}
      + block.withExternalId(externalId)
      + block.withType(type)
    ),

    "#withExternalId":: "The ID of the Okta user.",
    withExternalId(value):: (
      assert std.isString(value) : '"external_id" expected to be of type "string"';

      {
        external_id: value,
      }
    ),

    "#withType":: "The type of principal.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  requesterFieldValues:: {
    local block = self,

    new():: (
      {}
    ),

    "#withId":: "The ID of a requester field.",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    "#withLabel":: "A human-readable description of requester field.",
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

    "#withValue":: "The value of requester field, which depends on the type of the field.",
    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),

    values:: {
      local block = self,

      new():: (
        {}
      ),

      withValue(value):: (
        assert std.isString(value) : '"value" expected to be of type "string"';

        {
          value: value,
        }
      ),
    },
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        values+: converted,
      }
    ),
  },
  withRequested(value):: (
    {
      requested: value,
    }
  ),
  withRequestedFor(value):: (
    {
      requested_for: value,
    }
  ),
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

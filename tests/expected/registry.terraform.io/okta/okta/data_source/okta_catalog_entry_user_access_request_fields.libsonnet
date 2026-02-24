{
  local block = self,

  new(terraformName, entryId, userId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_catalog_entry_user_access_request_fields",
          type:: "data",
          attributes:: ["entry_id", "id", "user_id"],
        },
      },
    }
    + block.withEntryId(entryId)
    + block.withUserId(userId)
  ),

  "#withEntryId":: "The ID of the catalog entry.",
  withEntryId(value):: (
    assert std.isString(value) : '"entry_id" expected to be of type "string"';

    {
      entry_id: value,
    }
  ),

  "#withUserId":: "The ID of the user.",
  withUserId(value):: (
    assert std.isString(value) : '"user_id" expected to be of type "string"';

    {
      user_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  data:: {
    local block = self,

    new():: (
      {}
    ),

    choices:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withChoices(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        choices: converted,
      }
    ),
    withChoicesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        choices+: converted,
      }
    ),
  },
  withData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data: converted,
    }
  ),
  withDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data+: converted,
    }
  ),
}

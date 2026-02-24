{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_ui_schema",
          type:: "data",
          attributes:: ["created", "id", "last_updated"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The id property of an UI Schema.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  uiSchema:: {
    local block = self,

    new():: (
      {}
    ),

    elements:: {
      local block = self,

      new():: (
        {}
      ),

      options:: {
        local block = self,

        new():: (
          {}
        ),
      },
      withOptions(value):: (
        {
          options: value,
        }
      ),
    },
    withElements(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elements: converted,
      }
    ),
    withElementsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elements+: converted,
      }
    ),
  },
  withUiSchema(value):: (
    {
      ui_schema: value,
    }
  ),
}

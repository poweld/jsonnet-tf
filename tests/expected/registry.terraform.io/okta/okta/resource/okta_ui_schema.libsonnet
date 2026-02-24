{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_ui_schema",
          type:: "resource",
          attributes:: ["id"],
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

  uiSchema:: {
    local block = self,

    new():: (
      {}
    ),

    "#withButtonLabel":: "Specifies the button label for the Submit button at the bottom of the enrollment form.",
    withButtonLabel(value):: (
      assert std.isString(value) : '"button_label" expected to be of type "string"';

      {
        button_label: value,
      }
    ),

    "#withLabel":: "Specifies the label at the top of the enrollment form under the logo.",
    withLabel(value):: (
      assert std.isString(value) : '"label" expected to be of type "string"';

      {
        label: value,
      }
    ),

    "#withType":: "Specifies the type of layout.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    elements:: {
      local block = self,

      new(scope):: (
        {}
        + block.withScope(scope)
      ),

      "#withLabel":: "Label name for the UI element.",
      withLabel(value):: (
        assert std.isString(value) : '"label" expected to be of type "string"';

        {
          label: value,
        }
      ),

      "#withScope":: "Specifies the property bound to the input field. It must follow the format #/properties/PROPERTY_NAME where PROPERTY_NAME is a variable name for an attribute in profile editor.",
      withScope(value):: (
        assert std.isString(value) : '"scope" expected to be of type "string"';

        {
          scope: value,
        }
      ),

      "#withType":: "Specifies the relationship between this input element and scope. The Control value specifies that this input controls the value represented by scope.",
      withType(value):: (
        assert std.isString(value) : '"type" expected to be of type "string"';

        {
          type: value,
        }
      ),

      options:: {
        local block = self,

        new():: (
          {}
        ),

        "#withFormat":: "Specifies how the input appears.",
        withFormat(value):: (
          assert std.isString(value) : '"format" expected to be of type "string"';

          {
            format: value,
          }
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

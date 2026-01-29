{
  local block = self,

  new(terraformName, template, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_template_sms",
          type:: "resource",
          attributes:: ["id", "template", "type"],
        },
      },
    }
    + block.withTemplate(template)
    + block.withType(type)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withTemplate":: "SMS default template",
  withTemplate(value):: (
    assert std.isString(value) : '"template" expected to be of type "string"';

    {
      template: value,
    }
  ),

  "#withType":: "SMS template type",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  translations:: {
    local block = self,

    new(language, template):: (
      {}
      + block.withLanguage(language)
      + block.withTemplate(template)
    ),

    "#withLanguage":: "The language to map the template to.",
    withLanguage(value):: (
      assert std.isString(value) : '"language" expected to be of type "string"';

      {
        language: value,
      }
    ),

    "#withTemplate":: "The SMS message.",
    withTemplate(value):: (
      assert std.isString(value) : '"template" expected to be of type "string"';

      {
        template: value,
      }
    ),
  },
  withTranslations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      translations: converted,
    }
  ),
  withTranslationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      translations+: converted,
    }
  ),
}

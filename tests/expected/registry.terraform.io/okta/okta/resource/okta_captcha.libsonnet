{
  local block = self,

  new(terraformName, name, secretKey, siteKey, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_captcha",
          type:: "resource",
          attributes:: ["id", "name", "secret_key", "site_key", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withSecretKey(secretKey)
    + block.withSiteKey(siteKey)
    + block.withType(type)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Name of the CAPTCHA",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withSecretKey":: "Secret key issued from the CAPTCHA vendor to perform server-side validation for a CAPTCHA token",
  withSecretKey(value):: (
    assert std.isString(value) : '"secret_key" expected to be of type "string"';

    {
      secret_key: value,
    }
  ),

  "#withSiteKey":: "Site key issued from the CAPTCHA vendor to render a CAPTCHA on a page",
  withSiteKey(value):: (
    assert std.isString(value) : '"site_key" expected to be of type "string"';

    {
      site_key: value,
    }
  ),

  "#withType":: "Type of the captcha. Valid values: `HCAPTCHA`, `RECAPTCHA_V2`",
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
}

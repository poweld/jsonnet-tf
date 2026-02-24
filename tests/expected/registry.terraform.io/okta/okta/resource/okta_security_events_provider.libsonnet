{
  local block = self,

  new(terraformName, isEnabled, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_security_events_provider",
          type:: "resource",
          attributes:: ["id", "is_enabled", "name", "status", "type"],
        },
      },
    }
    + block.withIsEnabled(isEnabled)
    + block.withName(name)
    + block.withType(type)
  ),

  "#withIsEnabled":: "Whether or not the Security Events Provider is enabled.",
  withIsEnabled(value):: (
    assert std.isString(value) : '"is_enabled" expected to be of type "string"';

    {
      is_enabled: value,
    }
  ),

  "#withName":: "The name of the Security Events Provider instance.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withType":: "The application type of the Security Events Provider.",
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

  settings:: {
    local block = self,

    new():: (
      {}
    ),

    "#withIssuer":: "Issuer URL. Use with jwks_url",
    withIssuer(value):: (
      assert std.isString(value) : '"issuer" expected to be of type "string"';

      {
        issuer: value,
      }
    ),

    "#withJwksUrl":: "The public URL where the JWKS public key is uploaded. Use with issuer.",
    withJwksUrl(value):: (
      assert std.isString(value) : '"jwks_url" expected to be of type "string"';

      {
        jwks_url: value,
      }
    ),

    "#withWellKnownUrl":: "The published well-known URL of the Security Events Provider (the SSF transmitter).",
    withWellKnownUrl(value):: (
      assert std.isString(value) : '"well_known_url" expected to be of type "string"';

      {
        well_known_url: value,
      }
    ),
  },
  withSettings(value):: (
    {
      settings: value,
    }
  ),
}

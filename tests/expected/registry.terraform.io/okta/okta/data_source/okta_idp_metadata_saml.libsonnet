{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_idp_metadata_saml",
          type:: "data",
          attributes:: ["assertions_signed", "authn_request_signed", "encryption_certificate", "entity_id", "http_post_binding", "http_redirect_binding", "id", "idp_id", "metadata", "signing_certificate"],
        },
      },
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIdpId":: "The id of the IdP to retrieve metadata for.",
  withIdpId(value):: (
    assert std.isString(value) : '"idp_id" expected to be of type "string"';

    {
      idp_id: value,
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

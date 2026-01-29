{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_idp_social",
          type:: "data",
          attributes:: ["account_link_action", "account_link_group_include", "authorization_binding", "authorization_url", "client_id", "client_secret", "deprovisioned_action", "groups_action", "groups_assignment", "groups_attribute", "groups_filter", "id", "issuer_mode", "max_clock_skew", "name", "profile_master", "protocol_type", "provisioning_action", "scopes", "status", "subject_match_attribute", "subject_match_type", "suspended_action", "token_binding", "token_url", "type", "username_template"],
        },
      },
    }
  ),

  "#withId":: "The id of the social idp to retrieve, conflicts with `name`.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The name of the social idp to retrieve, conflicts with `id`.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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

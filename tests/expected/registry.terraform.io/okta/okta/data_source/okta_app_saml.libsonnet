{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_saml",
          type:: "data",
          attributes:: ["accessibility_error_redirect_url", "accessibility_login_redirect_url", "accessibility_self_service", "acs_endpoints", "active_only", "app_settings_json", "assertion_signed", "attribute_statements", "audience", "authn_context_class_ref", "auto_submit_toolbar", "default_relay_state", "destination", "digest_algorithm", "features", "groups", "hide_ios", "hide_web", "honor_force_authn", "id", "idp_issuer", "inline_hook_id", "key_id", "label", "label_prefix", "links", "name", "recipient", "request_compressed", "response_signed", "saml_signed_request_enabled", "signature_algorithm", "single_logout_certificate", "single_logout_issuer", "single_logout_url", "skip_groups", "skip_users", "sp_issuer", "sso_url", "status", "subject_name_id_format", "subject_name_id_template", "user_name_template", "user_name_template_push_status", "user_name_template_suffix", "user_name_template_type", "users"],
        },
      },
    }
  ),

  "#withActiveOnly":: "Search only ACTIVE applications.",
  withActiveOnly(value):: (
    assert std.isBoolean(value) : '"active_only" expected to be of type "bool"';

    {
      active_only: value,
    }
  ),

  "#withId":: "Id of application to retrieve, conflicts with label and label_prefix.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withLabel":: "The label of the app to retrieve, conflicts with label_prefix and id. Label  \t\t\t\tuses the ?q=<label> query parameter exposed by Okta's API. It should be noted that at this time  \t\t\t\tthis searches both name and label. This is used to avoid paginating through all applications.",
  withLabel(value):: (
    assert std.isString(value) : '"label" expected to be of type "string"';

    {
      label: value,
    }
  ),

  "#withLabelPrefix":: "Label prefix of the app to retrieve, conflicts with label and id. This will tell the \t\t\t\tprovider to do a starts with query as opposed to an equals query.",
  withLabelPrefix(value):: (
    assert std.isString(value) : '"label_prefix" expected to be of type "string"';

    {
      label_prefix: value,
    }
  ),

  "#withRequestCompressed":: "Denotes whether the request is compressed or not.",
  withRequestCompressed(value):: (
    assert std.isBoolean(value) : '"request_compressed" expected to be of type "bool"';

    {
      request_compressed: value,
    }
  ),

  "#withSkipGroups":: "Ignore groups sync. This is a temporary solution until 'groups' field is supported in all the app-like resources",
  withSkipGroups(value):: (
    assert std.isBoolean(value) : '"skip_groups" expected to be of type "bool"';

    {
      skip_groups: value,
    }
  ),

  "#withSkipUsers":: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  withSkipUsers(value):: (
    assert std.isBoolean(value) : '"skip_users" expected to be of type "bool"';

    {
      skip_users: value,
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

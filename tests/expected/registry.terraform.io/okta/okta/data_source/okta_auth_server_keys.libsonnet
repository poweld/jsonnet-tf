{
  local block = self,

  new(terraformName, authServerId, keyId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_keys",
          type:: "data",
          attributes:: ["alg", "auth_server_id", "e", "id", "key_id", "kid", "n", "status", "use"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withKeyId(keyId)
  ),

  "#withAuthServerId":: "The ID of the authorization server.",
  withAuthServerId(value):: (
    assert std.isString(value) : '"auth_server_id" expected to be of type "string"';

    {
      auth_server_id: value,
    }
  ),

  "#withKeyId":: "The ID of the certificate key.",
  withKeyId(value):: (
    assert std.isString(value) : '"key_id" expected to be of type "string"';

    {
      key_id: value,
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

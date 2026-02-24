{
  local block = self,

  new(terraformName, name, providerType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_push_provider",
          type:: "resource",
          attributes:: ["id", "last_updated_date", "name", "provider_type"],
        },
      },
    }
    + block.withName(name)
    + block.withProviderType(providerType)
  ),

  "#withName":: "The display name of the push provider.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withProviderType":: "The type of push provider. Valid values are `APNS` (Apple Push Notification Service) or `FCM` (Firebase Cloud Messaging).",
  withProviderType(value):: (
    assert std.isString(value) : '"provider_type" expected to be of type "string"';

    {
      provider_type: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  configuration:: {
    local block = self,

    new():: (
      {}
    ),

    apnsConfiguration:: {
      local block = self,

      new():: (
        {}
      ),

      "#withFileName":: "File name for Admin Console display.",
      withFileName(value):: (
        assert std.isString(value) : '"file_name" expected to be of type "string"';

        {
          file_name: value,
        }
      ),

      "#withKeyId":: "10-character Key ID obtained from the Apple developer account. Required for APNS provider type.",
      withKeyId(value):: (
        assert std.isString(value) : '"key_id" expected to be of type "string"';

        {
          key_id: value,
        }
      ),

      "#withTeamId":: "10-character Team ID used to develop the iOS app. Required for APNS provider type.",
      withTeamId(value):: (
        assert std.isString(value) : '"team_id" expected to be of type "string"';

        {
          team_id: value,
        }
      ),

      "#withTokenSigningKey":: "APNs private authentication token signing key. Required for APNS provider type.",
      withTokenSigningKey(value):: (
        assert std.isString(value) : '"token_signing_key" expected to be of type "string"';

        {
          token_signing_key: value,
        }
      ),
    },
    fcmConfiguration:: {
      local block = self,

      new():: (
        {}
      ),

      serviceAccountJson:: {
        local block = self,

        new():: (
          {}
        ),

        "#withAuthProviderX509CertUrl":: "The auth provider x509 cert URL.",
        withAuthProviderX509CertUrl(value):: (
          assert std.isString(value) : '"auth_provider_x509_cert_url" expected to be of type "string"';

          {
            auth_provider_x509_cert_url: value,
          }
        ),

        "#withAuthUri":: "The auth URI.",
        withAuthUri(value):: (
          assert std.isString(value) : '"auth_uri" expected to be of type "string"';

          {
            auth_uri: value,
          }
        ),

        "#withClientEmail":: "The client email.",
        withClientEmail(value):: (
          assert std.isString(value) : '"client_email" expected to be of type "string"';

          {
            client_email: value,
          }
        ),

        "#withClientId":: "The client ID.",
        withClientId(value):: (
          assert std.isString(value) : '"client_id" expected to be of type "string"';

          {
            client_id: value,
          }
        ),

        "#withClientX509CertUrl":: "The client x509 cert URL.",
        withClientX509CertUrl(value):: (
          assert std.isString(value) : '"client_x509_cert_url" expected to be of type "string"';

          {
            client_x509_cert_url: value,
          }
        ),

        "#withFileName":: "File name for Admin Console display.",
        withFileName(value):: (
          assert std.isString(value) : '"file_name" expected to be of type "string"';

          {
            file_name: value,
          }
        ),

        "#withPrivateKey":: "The private key.",
        withPrivateKey(value):: (
          assert std.isString(value) : '"private_key" expected to be of type "string"';

          {
            private_key: value,
          }
        ),

        "#withPrivateKeyId":: "The private key ID.",
        withPrivateKeyId(value):: (
          assert std.isString(value) : '"private_key_id" expected to be of type "string"';

          {
            private_key_id: value,
          }
        ),

        "#withProjectId":: "The project ID.",
        withProjectId(value):: (
          assert std.isString(value) : '"project_id" expected to be of type "string"';

          {
            project_id: value,
          }
        ),

        "#withTokenUri":: "The token URI.",
        withTokenUri(value):: (
          assert std.isString(value) : '"token_uri" expected to be of type "string"';

          {
            token_uri: value,
          }
        ),

        "#withType":: "The type of the service account.",
        withType(value):: (
          assert std.isString(value) : '"type" expected to be of type "string"';

          {
            type: value,
          }
        ),
      },
      withServiceAccountJson(value):: (
        {
          service_account_json: value,
        }
      ),
    },
    withApnsConfiguration(value):: (
      {
        apns_configuration: value,
      }
    ),
    withFcmConfiguration(value):: (
      {
        fcm_configuration: value,
      }
    ),
  },
  withConfiguration(value):: (
    {
      configuration: value,
    }
  ),
}

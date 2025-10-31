{
  local block = self,
  new(terraformName, app, appBundleArn, authType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appfabric_app_authorization",
          type:: "resource",
          attributes:: ["app", "app_bundle_arn", "arn", "auth_type", "auth_url", "created_at", "id", "persona", "region", "tags", "tags_all", "updated_at"],
        },
      },
    }
    + block.withApp(app)
    + block.withAppBundleArn(appBundleArn)
    + block.withAuthType(authType)
  ),
  withApp(value):: (
    local converted = value;
    assert std.isString(converted) : '"app" expected to be of type "string"';
    {
      app: converted,
    }
  ),
  withAppBundleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
    }
  ),
  withAuthType(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_type" expected to be of type "string"';
    {
      auth_type: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  credential:: {
    local block = self,
    new():: (
      {}
    ),
    api_key_credential:: {
      local block = self,
      new(apiKey):: (
        {}
        + block.withApiKey(apiKey)
      ),
      withApiKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"api_key" expected to be of type "string"';
        {
          api_key: converted,
        }
      ),
    },
    oauth2_credential:: {
      local block = self,
      new(clientId, clientSecret):: (
        {}
        + block.withClientId(clientId)
        + block.withClientSecret(clientSecret)
      ),
      withClientId(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_id" expected to be of type "string"';
        {
          client_id: converted,
        }
      ),
      withClientSecret(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_secret" expected to be of type "string"';
        {
          client_secret: converted,
        }
      ),
    },
    withApiKeyCredential(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key_credential: value,
      }
    ),
    withOauth2Credential(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth2_credential: value,
      }
    ),
    withApiKeyCredentialMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key_credential+: converted,
      }
    ),
    withOauth2CredentialMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth2_credential+: converted,
      }
    ),
  },
  tenant:: {
    local block = self,
    new(tenantDisplayName, tenantIdentifier):: (
      {}
      + block.withTenantDisplayName(tenantDisplayName)
      + block.withTenantIdentifier(tenantIdentifier)
    ),
    withTenantDisplayName(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenant_display_name" expected to be of type "string"';
      {
        tenant_display_name: converted,
      }
    ),
    withTenantIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenant_identifier" expected to be of type "string"';
      {
        tenant_identifier: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withCredential(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credential: value,
    }
  ),
  withTenant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tenant: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCredentialMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credential+: converted,
    }
  ),
  withTenantMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tenant+: converted,
    }
  ),
}

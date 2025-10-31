{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appstream_stack",
          type:: "resource",
          attributes:: ["arn", "created_time", "description", "display_name", "embed_host_domains", "feedback_url", "id", "name", "redirect_url", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  withEmbedHostDomains(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"embed_host_domains" expected to be of type "set"';
    {
      embed_host_domains: converted,
    }
  ),
  withEmbedHostDomainsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"embed_host_domains" expected to be of type "set"';
    {
      embed_host_domains+: converted,
    }
  ),
  withFeedbackUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"feedback_url" expected to be of type "string"';
    {
      feedback_url: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withRedirectUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"redirect_url" expected to be of type "string"';
    {
      redirect_url: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  access_endpoints:: {
    local block = self,
    new(endpointType):: (
      {}
      + block.withEndpointType(endpointType)
    ),
    withEndpointType(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
      {
        endpoint_type: converted,
      }
    ),
    withVpceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpce_id" expected to be of type "string"';
      {
        vpce_id: converted,
      }
    ),
  },
  application_settings:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withSettingsGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"settings_group" expected to be of type "string"';
      {
        settings_group: converted,
      }
    ),
  },
  storage_connectors:: {
    local block = self,
    new(connectorType):: (
      {}
      + block.withConnectorType(connectorType)
    ),
    withConnectorType(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_type" expected to be of type "string"';
      {
        connector_type: converted,
      }
    ),
    withDomains(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"domains" expected to be of type "list"';
      {
        domains: converted,
      }
    ),
    withDomainsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"domains" expected to be of type "list"';
      {
        domains+: converted,
      }
    ),
    withResourceIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_identifier" expected to be of type "string"';
      {
        resource_identifier: converted,
      }
    ),
  },
  streaming_experience_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withPreferredProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"preferred_protocol" expected to be of type "string"';
      {
        preferred_protocol: converted,
      }
    ),
  },
  user_settings:: {
    local block = self,
    new(action, permission):: (
      {}
      + block.withAction(action)
      + block.withPermission(permission)
    ),
    withAction(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    withPermission(value):: (
      local converted = value;
      assert std.isString(converted) : '"permission" expected to be of type "string"';
      {
        permission: converted,
      }
    ),
  },
  withAccessEndpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoints: value,
    }
  ),
  withApplicationSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_settings: value,
    }
  ),
  withStorageConnectors(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_connectors: value,
    }
  ),
  withStreamingExperienceSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      streaming_experience_settings: value,
    }
  ),
  withUserSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_settings: value,
    }
  ),
  withAccessEndpointsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoints+: converted,
    }
  ),
  withApplicationSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_settings+: converted,
    }
  ),
  withStorageConnectorsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_connectors+: converted,
    }
  ),
  withStreamingExperienceSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      streaming_experience_settings+: converted,
    }
  ),
  withUserSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_settings+: converted,
    }
  ),
}

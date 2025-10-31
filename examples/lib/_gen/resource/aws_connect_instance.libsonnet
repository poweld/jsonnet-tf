{
  local block = self,
  new(terraformName, identityManagementType, inboundCallsEnabled, outboundCallsEnabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_instance",
          type:: "resource",
          attributes:: ["arn", "auto_resolve_best_voices_enabled", "contact_flow_logs_enabled", "contact_lens_enabled", "created_time", "directory_id", "early_media_enabled", "id", "identity_management_type", "inbound_calls_enabled", "instance_alias", "multi_party_conference_enabled", "outbound_calls_enabled", "region", "service_role", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withIdentityManagementType(identityManagementType)
    + block.withInboundCallsEnabled(inboundCallsEnabled)
    + block.withOutboundCallsEnabled(outboundCallsEnabled)
  ),
  withAutoResolveBestVoicesEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_resolve_best_voices_enabled" expected to be of type "bool"';
    {
      auto_resolve_best_voices_enabled: converted,
    }
  ),
  withContactFlowLogsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"contact_flow_logs_enabled" expected to be of type "bool"';
    {
      contact_flow_logs_enabled: converted,
    }
  ),
  withContactLensEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"contact_lens_enabled" expected to be of type "bool"';
    {
      contact_lens_enabled: converted,
    }
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withEarlyMediaEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"early_media_enabled" expected to be of type "bool"';
    {
      early_media_enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityManagementType(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_management_type" expected to be of type "string"';
    {
      identity_management_type: converted,
    }
  ),
  withInboundCallsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"inbound_calls_enabled" expected to be of type "bool"';
    {
      inbound_calls_enabled: converted,
    }
  ),
  withInstanceAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_alias" expected to be of type "string"';
    {
      instance_alias: converted,
    }
  ),
  withMultiPartyConferenceEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_party_conference_enabled" expected to be of type "bool"';
    {
      multi_party_conference_enabled: converted,
    }
  ),
  withOutboundCallsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"outbound_calls_enabled" expected to be of type "bool"';
    {
      outbound_calls_enabled: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

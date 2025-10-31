{
  local block = self,
  new(terraformName, coreNetworkId, edgeLocation, transportAttachmentId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_connect_attachment",
          type:: "resource",
          attributes:: ["arn", "attachment_id", "attachment_policy_rule_number", "attachment_type", "core_network_arn", "core_network_id", "edge_location", "id", "owner_account_id", "resource_arn", "segment_name", "state", "tags", "tags_all", "transport_attachment_id"],
        },
      },
    }
    + block.withCoreNetworkId(coreNetworkId)
    + block.withEdgeLocation(edgeLocation)
    + block.withTransportAttachmentId(transportAttachmentId)
  ),
  withCoreNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  withEdgeLocation(value):: (
    local converted = value;
    assert std.isString(converted) : '"edge_location" expected to be of type "string"';
    {
      edge_location: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTransportAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transport_attachment_id" expected to be of type "string"';
    {
      transport_attachment_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  options:: {
    local block = self,
    new():: (
      {}
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
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
  withOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
}

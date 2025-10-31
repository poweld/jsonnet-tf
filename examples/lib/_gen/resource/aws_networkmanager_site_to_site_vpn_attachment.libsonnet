{
  local block = self,
  new(terraformName, coreNetworkId, vpnConnectionArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_site_to_site_vpn_attachment",
          type:: "resource",
          attributes:: ["arn", "attachment_policy_rule_number", "attachment_type", "core_network_arn", "core_network_id", "edge_location", "id", "owner_account_id", "resource_arn", "segment_name", "state", "tags", "tags_all", "vpn_connection_arn"],
        },
      },
    }
    + block.withCoreNetworkId(coreNetworkId)
    + block.withVpnConnectionArn(vpnConnectionArn)
  ),
  withCoreNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
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
  withVpnConnectionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_connection_arn" expected to be of type "string"';
    {
      vpn_connection_arn: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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

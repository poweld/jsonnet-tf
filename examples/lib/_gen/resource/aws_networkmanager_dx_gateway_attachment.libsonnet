{
  local block = self,
  new(terraformName, coreNetworkId, directConnectGatewayArn, edgeLocations):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_dx_gateway_attachment",
          type:: "resource",
          attributes:: ["arn", "attachment_policy_rule_number", "attachment_type", "core_network_arn", "core_network_id", "direct_connect_gateway_arn", "edge_locations", "id", "owner_account_id", "segment_name", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withCoreNetworkId(coreNetworkId)
    + block.withDirectConnectGatewayArn(directConnectGatewayArn)
    + block.withEdgeLocations(edgeLocations)
  ),
  withCoreNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  withDirectConnectGatewayArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"direct_connect_gateway_arn" expected to be of type "string"';
    {
      direct_connect_gateway_arn: converted,
    }
  ),
  withEdgeLocations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"edge_locations" expected to be of type "list"';
    {
      edge_locations: converted,
    }
  ),
  withEdgeLocationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"edge_locations" expected to be of type "list"';
    {
      edge_locations+: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

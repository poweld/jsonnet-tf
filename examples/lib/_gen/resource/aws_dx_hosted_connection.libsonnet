{
  local block = self,
  new(terraformName, bandwidth, connectionId, name, ownerAccountId, vlan):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_hosted_connection",
          type:: "resource",
          attributes:: ["aws_device", "bandwidth", "connection_id", "connection_region", "has_logical_redundancy", "id", "jumbo_frame_capable", "lag_id", "loa_issue_time", "location", "name", "owner_account_id", "partner_name", "provider_name", "region", "state", "vlan"],
        },
      },
    }
    + block.withBandwidth(bandwidth)
    + block.withConnectionId(connectionId)
    + block.withName(name)
    + block.withOwnerAccountId(ownerAccountId)
    + block.withVlan(vlan)
  ),
  withBandwidth(value):: (
    local converted = value;
    assert std.isString(converted) : '"bandwidth" expected to be of type "string"';
    {
      bandwidth: converted,
    }
  ),
  withConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
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
  withOwnerAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
    }
  ),
  withVlan(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vlan" expected to be of type "number"';
    {
      vlan: converted,
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

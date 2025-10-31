{
  local block = self,
  new(terraformName, clientVpnEndpointId, targetNetworkCidr):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_client_vpn_authorization_rule",
          type:: "resource",
          attributes:: ["access_group_id", "authorize_all_groups", "client_vpn_endpoint_id", "description", "id", "region", "target_network_cidr"],
        },
      },
    }
    + block.withClientVpnEndpointId(clientVpnEndpointId)
    + block.withTargetNetworkCidr(targetNetworkCidr)
  ),
  withAccessGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_group_id" expected to be of type "string"';
    {
      access_group_id: converted,
    }
  ),
  withAuthorizeAllGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"authorize_all_groups" expected to be of type "bool"';
    {
      authorize_all_groups: converted,
    }
  ),
  withClientVpnEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_vpn_endpoint_id" expected to be of type "string"';
    {
      client_vpn_endpoint_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTargetNetworkCidr(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_network_cidr" expected to be of type "string"';
    {
      target_network_cidr: converted,
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

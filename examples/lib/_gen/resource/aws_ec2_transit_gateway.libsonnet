{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway",
          type:: "resource",
          attributes:: ["amazon_side_asn", "arn", "association_default_route_table_id", "auto_accept_shared_attachments", "default_route_table_association", "default_route_table_propagation", "description", "dns_support", "id", "multicast_support", "owner_id", "propagation_default_route_table_id", "region", "security_group_referencing_support", "tags", "tags_all", "transit_gateway_cidr_blocks", "vpn_ecmp_support"],
        },
      },
    }
  ),
  withAmazonSideAsn(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"amazon_side_asn" expected to be of type "number"';
    {
      amazon_side_asn: converted,
    }
  ),
  withAutoAcceptSharedAttachments(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_accept_shared_attachments" expected to be of type "string"';
    {
      auto_accept_shared_attachments: converted,
    }
  ),
  withDefaultRouteTableAssociation(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_route_table_association" expected to be of type "string"';
    {
      default_route_table_association: converted,
    }
  ),
  withDefaultRouteTablePropagation(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_route_table_propagation" expected to be of type "string"';
    {
      default_route_table_propagation: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDnsSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_support" expected to be of type "string"';
    {
      dns_support: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMulticastSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"multicast_support" expected to be of type "string"';
    {
      multicast_support: converted,
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
  withSecurityGroupReferencingSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_referencing_support" expected to be of type "string"';
    {
      security_group_referencing_support: converted,
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
  withTransitGatewayCidrBlocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transit_gateway_cidr_blocks" expected to be of type "set"';
    {
      transit_gateway_cidr_blocks: converted,
    }
  ),
  withTransitGatewayCidrBlocksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transit_gateway_cidr_blocks" expected to be of type "set"';
    {
      transit_gateway_cidr_blocks+: converted,
    }
  ),
  withVpnEcmpSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_ecmp_support" expected to be of type "string"';
    {
      vpn_ecmp_support: converted,
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

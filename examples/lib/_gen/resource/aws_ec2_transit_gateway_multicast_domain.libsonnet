{
  local block = self,
  new(terraformName, transitGatewayId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_multicast_domain",
          type:: "resource",
          attributes:: ["arn", "auto_accept_shared_associations", "id", "igmpv2_support", "owner_id", "region", "static_sources_support", "tags", "tags_all", "transit_gateway_id"],
        },
      },
    }
    + block.withTransitGatewayId(transitGatewayId)
  ),
  withAutoAcceptSharedAssociations(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_accept_shared_associations" expected to be of type "string"';
    {
      auto_accept_shared_associations: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIgmpv2Support(value):: (
    local converted = value;
    assert std.isString(converted) : '"igmpv2_support" expected to be of type "string"';
    {
      igmpv2_support: converted,
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
  withStaticSourcesSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"static_sources_support" expected to be of type "string"';
    {
      static_sources_support: converted,
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
  withTransitGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
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

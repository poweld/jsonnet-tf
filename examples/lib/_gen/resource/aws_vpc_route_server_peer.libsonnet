{
  local block = self,
  new(terraformName, peerAddress, routeServerEndpointId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_route_server_peer",
          type:: "resource",
          attributes:: ["arn", "endpoint_eni_address", "endpoint_eni_id", "peer_address", "region", "route_server_endpoint_id", "route_server_id", "route_server_peer_id", "subnet_id", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withPeerAddress(peerAddress)
    + block.withRouteServerEndpointId(routeServerEndpointId)
  ),
  withPeerAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_address" expected to be of type "string"';
    {
      peer_address: converted,
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
  withRouteServerEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_server_endpoint_id" expected to be of type "string"';
    {
      route_server_endpoint_id: converted,
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
  bgp_options:: {
    local block = self,
    new(peerAsn):: (
      {}
      + block.withPeerAsn(peerAsn)
    ),
    withPeerAsn(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"peer_asn" expected to be of type "number"';
      {
        peer_asn: converted,
      }
    ),
    withPeerLivenessDetection(value):: (
      local converted = value;
      assert std.isString(converted) : '"peer_liveness_detection" expected to be of type "string"';
      {
        peer_liveness_detection: converted,
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
  },
  withBgpOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withBgpOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options+: converted,
    }
  ),
}

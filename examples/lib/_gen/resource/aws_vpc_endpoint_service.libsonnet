{
  local block = self,
  new(terraformName, acceptanceRequired):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_endpoint_service",
          type:: "resource",
          attributes:: ["acceptance_required", "allowed_principals", "arn", "availability_zones", "base_endpoint_dns_names", "gateway_load_balancer_arns", "id", "manages_vpc_endpoints", "network_load_balancer_arns", "private_dns_name", "private_dns_name_configuration", "region", "service_name", "service_type", "state", "supported_ip_address_types", "supported_regions", "tags", "tags_all"],
        },
      },
    }
    + block.withAcceptanceRequired(acceptanceRequired)
  ),
  withAcceptanceRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"acceptance_required" expected to be of type "bool"';
    {
      acceptance_required: converted,
    }
  ),
  withAllowedPrincipals(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_principals" expected to be of type "set"';
    {
      allowed_principals: converted,
    }
  ),
  withAllowedPrincipalsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_principals" expected to be of type "set"';
    {
      allowed_principals+: converted,
    }
  ),
  withGatewayLoadBalancerArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateway_load_balancer_arns" expected to be of type "set"';
    {
      gateway_load_balancer_arns: converted,
    }
  ),
  withGatewayLoadBalancerArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateway_load_balancer_arns" expected to be of type "set"';
    {
      gateway_load_balancer_arns+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNetworkLoadBalancerArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_load_balancer_arns" expected to be of type "set"';
    {
      network_load_balancer_arns: converted,
    }
  ),
  withNetworkLoadBalancerArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_load_balancer_arns" expected to be of type "set"';
    {
      network_load_balancer_arns+: converted,
    }
  ),
  withPrivateDnsName(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns_name" expected to be of type "string"';
    {
      private_dns_name: converted,
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
  withSupportedIpAddressTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_ip_address_types" expected to be of type "set"';
    {
      supported_ip_address_types: converted,
    }
  ),
  withSupportedIpAddressTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_ip_address_types" expected to be of type "set"';
    {
      supported_ip_address_types+: converted,
    }
  ),
  withSupportedRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_regions" expected to be of type "set"';
    {
      supported_regions: converted,
    }
  ),
  withSupportedRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_regions" expected to be of type "set"';
    {
      supported_regions+: converted,
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

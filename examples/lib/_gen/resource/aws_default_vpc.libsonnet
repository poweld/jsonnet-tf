{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_default_vpc",
          type:: "resource",
          attributes:: ["arn", "assign_generated_ipv6_cidr_block", "cidr_block", "default_network_acl_id", "default_route_table_id", "default_security_group_id", "dhcp_options_id", "enable_dns_hostnames", "enable_dns_support", "enable_network_address_usage_metrics", "existing_default_vpc", "force_destroy", "id", "instance_tenancy", "ipv6_association_id", "ipv6_cidr_block", "ipv6_cidr_block_network_border_group", "ipv6_ipam_pool_id", "ipv6_netmask_length", "main_route_table_id", "owner_id", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withAssignGeneratedIpv6CidrBlock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assign_generated_ipv6_cidr_block" expected to be of type "bool"';
    {
      assign_generated_ipv6_cidr_block: converted,
    }
  ),
  withEnableDnsHostnames(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_dns_hostnames" expected to be of type "bool"';
    {
      enable_dns_hostnames: converted,
    }
  ),
  withEnableDnsSupport(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_dns_support" expected to be of type "bool"';
    {
      enable_dns_support: converted,
    }
  ),
  withEnableNetworkAddressUsageMetrics(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_network_address_usage_metrics" expected to be of type "bool"';
    {
      enable_network_address_usage_metrics: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpv6CidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
    {
      ipv6_cidr_block: converted,
    }
  ),
  withIpv6CidrBlockNetworkBorderGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block_network_border_group" expected to be of type "string"';
    {
      ipv6_cidr_block_network_border_group: converted,
    }
  ),
  withIpv6IpamPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_ipam_pool_id" expected to be of type "string"';
    {
      ipv6_ipam_pool_id: converted,
    }
  ),
  withIpv6NetmaskLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_netmask_length" expected to be of type "number"';
    {
      ipv6_netmask_length: converted,
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
}

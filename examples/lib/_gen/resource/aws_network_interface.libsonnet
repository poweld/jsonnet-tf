{
  local block = self,
  new(terraformName, subnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_network_interface",
          type:: "resource",
          attributes:: ["arn", "description", "enable_primary_ipv6", "id", "interface_type", "ipv4_prefix_count", "ipv4_prefixes", "ipv6_address_count", "ipv6_address_list", "ipv6_address_list_enabled", "ipv6_addresses", "ipv6_prefix_count", "ipv6_prefixes", "mac_address", "outpost_arn", "owner_id", "private_dns_name", "private_ip", "private_ip_list", "private_ip_list_enabled", "private_ips", "private_ips_count", "region", "security_groups", "source_dest_check", "subnet_id", "tags", "tags_all"],
        },
      },
    }
    + block.withSubnetId(subnetId)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnablePrimaryIpv6(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_primary_ipv6" expected to be of type "bool"';
    {
      enable_primary_ipv6: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInterfaceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"interface_type" expected to be of type "string"';
    {
      interface_type: converted,
    }
  ),
  withIpv4PrefixCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv4_prefix_count" expected to be of type "number"';
    {
      ipv4_prefix_count: converted,
    }
  ),
  withIpv4Prefixes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
    {
      ipv4_prefixes: converted,
    }
  ),
  withIpv4PrefixesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
    {
      ipv4_prefixes+: converted,
    }
  ),
  withIpv6AddressCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_address_count" expected to be of type "number"';
    {
      ipv6_address_count: converted,
    }
  ),
  withIpv6AddressList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_address_list" expected to be of type "list"';
    {
      ipv6_address_list: converted,
    }
  ),
  withIpv6AddressListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_address_list" expected to be of type "list"';
    {
      ipv6_address_list+: converted,
    }
  ),
  withIpv6AddressListEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ipv6_address_list_enabled" expected to be of type "bool"';
    {
      ipv6_address_list_enabled: converted,
    }
  ),
  withIpv6Addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
    {
      ipv6_addresses: converted,
    }
  ),
  withIpv6AddressesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
    {
      ipv6_addresses+: converted,
    }
  ),
  withIpv6PrefixCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_prefix_count" expected to be of type "number"';
    {
      ipv6_prefix_count: converted,
    }
  ),
  withIpv6Prefixes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
    {
      ipv6_prefixes: converted,
    }
  ),
  withIpv6PrefixesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
    {
      ipv6_prefixes+: converted,
    }
  ),
  withPrivateIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip" expected to be of type "string"';
    {
      private_ip: converted,
    }
  ),
  withPrivateIpList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_ip_list" expected to be of type "list"';
    {
      private_ip_list: converted,
    }
  ),
  withPrivateIpListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_ip_list" expected to be of type "list"';
    {
      private_ip_list+: converted,
    }
  ),
  withPrivateIpListEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"private_ip_list_enabled" expected to be of type "bool"';
    {
      private_ip_list_enabled: converted,
    }
  ),
  withPrivateIps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"private_ips" expected to be of type "set"';
    {
      private_ips: converted,
    }
  ),
  withPrivateIpsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"private_ips" expected to be of type "set"';
    {
      private_ips+: converted,
    }
  ),
  withPrivateIpsCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"private_ips_count" expected to be of type "number"';
    {
      private_ips_count: converted,
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
  withSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  withSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  withSourceDestCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"source_dest_check" expected to be of type "bool"';
    {
      source_dest_check: converted,
    }
  ),
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  attachment:: {
    local block = self,
    new(deviceIndex, instance):: (
      {}
      + block.withDeviceIndex(deviceIndex)
      + block.withInstance(instance)
    ),
    withDeviceIndex(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
      {
        device_index: converted,
      }
    ),
    withInstance(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance" expected to be of type "string"';
      {
        instance: converted,
      }
    ),
    withNetworkCardIndex(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"network_card_index" expected to be of type "number"';
      {
        network_card_index: converted,
      }
    ),
  },
  withAttachment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment: value,
    }
  ),
  withAttachmentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment+: converted,
    }
  ),
}

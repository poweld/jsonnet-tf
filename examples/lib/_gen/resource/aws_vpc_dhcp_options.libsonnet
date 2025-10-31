{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_dhcp_options",
          type:: "resource",
          attributes:: ["arn", "domain_name", "domain_name_servers", "id", "ipv6_address_preferred_lease_time", "netbios_name_servers", "netbios_node_type", "ntp_servers", "owner_id", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withDomainNameServers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_name_servers" expected to be of type "list"';
    {
      domain_name_servers: converted,
    }
  ),
  withDomainNameServersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_name_servers" expected to be of type "list"';
    {
      domain_name_servers+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpv6AddressPreferredLeaseTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_address_preferred_lease_time" expected to be of type "string"';
    {
      ipv6_address_preferred_lease_time: converted,
    }
  ),
  withNetbiosNameServers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"netbios_name_servers" expected to be of type "list"';
    {
      netbios_name_servers: converted,
    }
  ),
  withNetbiosNameServersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"netbios_name_servers" expected to be of type "list"';
    {
      netbios_name_servers+: converted,
    }
  ),
  withNetbiosNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"netbios_node_type" expected to be of type "string"';
    {
      netbios_node_type: converted,
    }
  ),
  withNtpServers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ntp_servers" expected to be of type "list"';
    {
      ntp_servers: converted,
    }
  ),
  withNtpServersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ntp_servers" expected to be of type "list"';
    {
      ntp_servers+: converted,
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

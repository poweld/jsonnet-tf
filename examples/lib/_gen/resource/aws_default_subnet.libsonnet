{
  local block = self,
  new(terraformName, availabilityZone):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_default_subnet",
          type:: "resource",
          attributes:: ["arn", "assign_ipv6_address_on_creation", "availability_zone", "availability_zone_id", "cidr_block", "customer_owned_ipv4_pool", "enable_dns64", "enable_lni_at_device_index", "enable_resource_name_dns_a_record_on_launch", "enable_resource_name_dns_aaaa_record_on_launch", "existing_default_subnet", "force_destroy", "id", "ipv6_cidr_block", "ipv6_cidr_block_association_id", "ipv6_native", "map_customer_owned_ip_on_launch", "map_public_ip_on_launch", "outpost_arn", "owner_id", "private_dns_hostname_type_on_launch", "region", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withAvailabilityZone(availabilityZone)
  ),
  withAssignIpv6AddressOnCreation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assign_ipv6_address_on_creation" expected to be of type "bool"';
    {
      assign_ipv6_address_on_creation: converted,
    }
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withCustomerOwnedIpv4Pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ipv4_pool" expected to be of type "string"';
    {
      customer_owned_ipv4_pool: converted,
    }
  ),
  withEnableDns64(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_dns64" expected to be of type "bool"';
    {
      enable_dns64: converted,
    }
  ),
  withEnableResourceNameDnsARecordOnLaunch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_resource_name_dns_a_record_on_launch" expected to be of type "bool"';
    {
      enable_resource_name_dns_a_record_on_launch: converted,
    }
  ),
  withEnableResourceNameDnsAaaaRecordOnLaunch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_resource_name_dns_aaaa_record_on_launch" expected to be of type "bool"';
    {
      enable_resource_name_dns_aaaa_record_on_launch: converted,
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
  withIpv6Native(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ipv6_native" expected to be of type "bool"';
    {
      ipv6_native: converted,
    }
  ),
  withMapCustomerOwnedIpOnLaunch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"map_customer_owned_ip_on_launch" expected to be of type "bool"';
    {
      map_customer_owned_ip_on_launch: converted,
    }
  ),
  withMapPublicIpOnLaunch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"map_public_ip_on_launch" expected to be of type "bool"';
    {
      map_public_ip_on_launch: converted,
    }
  ),
  withPrivateDnsHostnameTypeOnLaunch(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns_hostname_type_on_launch" expected to be of type "string"';
    {
      private_dns_hostname_type_on_launch: converted,
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

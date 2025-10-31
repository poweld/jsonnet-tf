{
  local block = self,
  new(terraformName, coreNetworkId, subnetArns, vpcArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_vpc_attachment",
          type:: "resource",
          attributes:: ["arn", "attachment_policy_rule_number", "attachment_type", "core_network_arn", "core_network_id", "edge_location", "id", "owner_account_id", "resource_arn", "segment_name", "state", "subnet_arns", "tags", "tags_all", "vpc_arn"],
        },
      },
    }
    + block.withCoreNetworkId(coreNetworkId)
    + block.withSubnetArns(subnetArns)
    + block.withVpcArn(vpcArn)
  ),
  withCoreNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withSubnetArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_arns" expected to be of type "set"';
    {
      subnet_arns: converted,
    }
  ),
  withSubnetArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_arns" expected to be of type "set"';
    {
      subnet_arns+: converted,
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
  withVpcArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_arn" expected to be of type "string"';
    {
      vpc_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  options:: {
    local block = self,
    new():: (
      {}
    ),
    withApplianceModeSupport(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"appliance_mode_support" expected to be of type "bool"';
      {
        appliance_mode_support: converted,
      }
    ),
    withDnsSupport(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dns_support" expected to be of type "bool"';
      {
        dns_support: converted,
      }
    ),
    withIpv6Support(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ipv6_support" expected to be of type "bool"';
      {
        ipv6_support: converted,
      }
    ),
    withSecurityGroupReferencingSupport(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"security_group_referencing_support" expected to be of type "bool"';
      {
        security_group_referencing_support: converted,
      }
    ),
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
  withOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, firewallPolicyArn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkfirewall_firewall",
          type:: "resource",
          attributes:: ["arn", "availability_zone_change_protection", "delete_protection", "description", "enabled_analysis_types", "firewall_policy_arn", "firewall_policy_change_protection", "firewall_status", "id", "name", "region", "subnet_change_protection", "tags", "tags_all", "transit_gateway_id", "transit_gateway_owner_account_id", "update_token", "vpc_id"],
        },
      },
    }
    + block.withFirewallPolicyArn(firewallPolicyArn)
    + block.withName(name)
  ),
  withAvailabilityZoneChangeProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"availability_zone_change_protection" expected to be of type "bool"';
    {
      availability_zone_change_protection: converted,
    }
  ),
  withDeleteProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_protection" expected to be of type "bool"';
    {
      delete_protection: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnabledAnalysisTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_analysis_types" expected to be of type "set"';
    {
      enabled_analysis_types: converted,
    }
  ),
  withEnabledAnalysisTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_analysis_types" expected to be of type "set"';
    {
      enabled_analysis_types+: converted,
    }
  ),
  withFirewallPolicyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_policy_arn" expected to be of type "string"';
    {
      firewall_policy_arn: converted,
    }
  ),
  withFirewallPolicyChangeProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"firewall_policy_change_protection" expected to be of type "bool"';
    {
      firewall_policy_change_protection: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withSubnetChangeProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"subnet_change_protection" expected to be of type "bool"';
    {
      subnet_change_protection: converted,
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
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  availability_zone_mapping:: {
    local block = self,
    new(availabilityZoneId):: (
      {}
      + block.withAvailabilityZoneId(availabilityZoneId)
    ),
    withAvailabilityZoneId(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone_id" expected to be of type "string"';
      {
        availability_zone_id: converted,
      }
    ),
  },
  encryption_configuration:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_id" expected to be of type "string"';
      {
        key_id: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  subnet_mapping:: {
    local block = self,
    new(subnetId):: (
      {}
      + block.withSubnetId(subnetId)
    ),
    withIpAddressType(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    withSubnetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
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
  withAvailabilityZoneMapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      availability_zone_mapping: value,
    }
  ),
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withSubnetMapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_mapping: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAvailabilityZoneMappingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      availability_zone_mapping+: converted,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  withSubnetMappingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_mapping+: converted,
    }
  ),
}

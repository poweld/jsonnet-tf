{
  local block = self,
  new(terraformName, kmsKeyId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_finspace_kx_environment",
          type:: "resource",
          attributes:: ["arn", "availability_zones", "created_timestamp", "description", "id", "infrastructure_account_id", "kms_key_id", "last_modified_timestamp", "name", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withKmsKeyId(kmsKeyId)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  custom_dns_configuration:: {
    local block = self,
    new(customDnsServerIp, customDnsServerName):: (
      {}
      + block.withCustomDnsServerIp(customDnsServerIp)
      + block.withCustomDnsServerName(customDnsServerName)
    ),
    withCustomDnsServerIp(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_dns_server_ip" expected to be of type "string"';
      {
        custom_dns_server_ip: converted,
      }
    ),
    withCustomDnsServerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_dns_server_name" expected to be of type "string"';
      {
        custom_dns_server_name: converted,
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
  transit_gateway_configuration:: {
    local block = self,
    new(routableCidrSpace, transitGatewayId):: (
      {}
      + block.withRoutableCidrSpace(routableCidrSpace)
      + block.withTransitGatewayId(transitGatewayId)
    ),
    withRoutableCidrSpace(value):: (
      local converted = value;
      assert std.isString(converted) : '"routable_cidr_space" expected to be of type "string"';
      {
        routable_cidr_space: converted,
      }
    ),
    withTransitGatewayId(value):: (
      local converted = value;
      assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
      {
        transit_gateway_id: converted,
      }
    ),
    attachment_network_acl_configuration:: {
      local block = self,
      new(cidrBlock, protocol, ruleAction, ruleNumber):: (
        {}
        + block.withCidrBlock(cidrBlock)
        + block.withProtocol(protocol)
        + block.withRuleAction(ruleAction)
        + block.withRuleNumber(ruleNumber)
      ),
      withCidrBlock(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
        {
          cidr_block: converted,
        }
      ),
      withProtocol(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol" expected to be of type "string"';
        {
          protocol: converted,
        }
      ),
      withRuleAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_action" expected to be of type "string"';
        {
          rule_action: converted,
        }
      ),
      withRuleNumber(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"rule_number" expected to be of type "number"';
        {
          rule_number: converted,
        }
      ),
      icmp_type_code:: {
        local block = self,
        new(code, type):: (
          {}
          + block.withCode(code)
          + block.withType(type)
        ),
        withCode(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"code" expected to be of type "number"';
          {
            code: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"type" expected to be of type "number"';
          {
            type: converted,
          }
        ),
      },
      port_range:: {
        local block = self,
        new(from, to):: (
          {}
          + block.withFrom(from)
          + block.withTo(to)
        ),
        withFrom(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"from" expected to be of type "number"';
          {
            from: converted,
          }
        ),
        withTo(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"to" expected to be of type "number"';
          {
            to: converted,
          }
        ),
      },
      withIcmpTypeCode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          icmp_type_code: value,
        }
      ),
      withPortRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_range: value,
        }
      ),
      withIcmpTypeCodeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          icmp_type_code+: converted,
        }
      ),
      withPortRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_range+: converted,
        }
      ),
    },
    withAttachmentNetworkAclConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attachment_network_acl_configuration: value,
      }
    ),
    withAttachmentNetworkAclConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attachment_network_acl_configuration+: converted,
      }
    ),
  },
  withCustomDnsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_dns_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTransitGatewayConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      transit_gateway_configuration: value,
    }
  ),
  withCustomDnsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_dns_configuration+: converted,
    }
  ),
  withTransitGatewayConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      transit_gateway_configuration+: converted,
    }
  ),
}

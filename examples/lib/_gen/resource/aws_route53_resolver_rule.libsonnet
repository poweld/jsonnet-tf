{
  local block = self,
  new(terraformName, domainName, ruleType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_rule",
          type:: "resource",
          attributes:: ["arn", "domain_name", "id", "name", "owner_id", "region", "resolver_endpoint_id", "rule_type", "share_status", "tags", "tags_all"],
        },
      },
    }
    + block.withDomainName(domainName)
    + block.withRuleType(ruleType)
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  withResolverEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolver_endpoint_id" expected to be of type "string"';
    {
      resolver_endpoint_id: converted,
    }
  ),
  withRuleType(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_type" expected to be of type "string"';
    {
      rule_type: converted,
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
  target_ip:: {
    local block = self,
    new():: (
      {}
    ),
    withIp(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip" expected to be of type "string"';
      {
        ip: converted,
      }
    ),
    withIpv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6" expected to be of type "string"';
      {
        ipv6: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
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
  withTargetIp(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_ip: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTargetIpMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_ip+: converted,
    }
  ),
}

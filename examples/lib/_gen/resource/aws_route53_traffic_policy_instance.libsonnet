{
  local block = self,
  new(terraformName, hostedZoneId, name, trafficPolicyId, trafficPolicyVersion, ttl):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_traffic_policy_instance",
          type:: "resource",
          attributes:: ["arn", "hosted_zone_id", "id", "name", "traffic_policy_id", "traffic_policy_version", "ttl"],
        },
      },
    }
    + block.withHostedZoneId(hostedZoneId)
    + block.withName(name)
    + block.withTrafficPolicyId(trafficPolicyId)
    + block.withTrafficPolicyVersion(trafficPolicyVersion)
    + block.withTtl(ttl)
  ),
  withHostedZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
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
  withTrafficPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_policy_id" expected to be of type "string"';
    {
      traffic_policy_id: converted,
    }
  ),
  withTrafficPolicyVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"traffic_policy_version" expected to be of type "number"';
    {
      traffic_policy_version: converted,
    }
  ),
  withTtl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
    {
      ttl: converted,
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

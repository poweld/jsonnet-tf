{
  local block = self,
  new(terraformName, lbPort, loadBalancer, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lb_ssl_negotiation_policy",
          type:: "resource",
          attributes:: ["id", "lb_port", "load_balancer", "name", "region", "triggers"],
        },
      },
    }
    + block.withLbPort(lbPort)
    + block.withLoadBalancer(loadBalancer)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLbPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"lb_port" expected to be of type "number"';
    {
      lb_port: converted,
    }
  ),
  withLoadBalancer(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer" expected to be of type "string"';
    {
      load_balancer: converted,
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
  withTriggers(value):: (
    local converted = value;
    assert std.isObject(converted) : '"triggers" expected to be of type "map"';
    {
      triggers: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  attribute:: {
    local block = self,
    new(name, value):: (
      {}
      + block.withName(name)
      + block.withValue(value)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withAttribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute: value,
    }
  ),
  withAttributeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, cookieName, lbPort, loadBalancer, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_app_cookie_stickiness_policy",
          type:: "resource",
          attributes:: ["cookie_name", "id", "lb_port", "load_balancer", "name", "region"],
        },
      },
    }
    + block.withCookieName(cookieName)
    + block.withLbPort(lbPort)
    + block.withLoadBalancer(loadBalancer)
    + block.withName(name)
  ),
  withCookieName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cookie_name" expected to be of type "string"';
    {
      cookie_name: converted,
    }
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

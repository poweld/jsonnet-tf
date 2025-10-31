{
  local block = self,
  new(terraformName, instancePorts, loadBalancer):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_proxy_protocol_policy",
          type:: "resource",
          attributes:: ["id", "instance_ports", "load_balancer", "region"],
        },
      },
    }
    + block.withInstancePorts(instancePorts)
    + block.withLoadBalancer(loadBalancer)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstancePorts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_ports" expected to be of type "set"';
    {
      instance_ports: converted,
    }
  ),
  withInstancePortsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_ports" expected to be of type "set"';
    {
      instance_ports+: converted,
    }
  ),
  withLoadBalancer(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer" expected to be of type "string"';
    {
      load_balancer: converted,
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

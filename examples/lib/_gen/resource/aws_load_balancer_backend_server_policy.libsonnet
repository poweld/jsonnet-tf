{
  local block = self,
  new(terraformName, instancePort, loadBalancerName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_load_balancer_backend_server_policy",
          type:: "resource",
          attributes:: ["id", "instance_port", "load_balancer_name", "policy_names", "region"],
        },
      },
    }
    + block.withInstancePort(instancePort)
    + block.withLoadBalancerName(loadBalancerName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstancePort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_port" expected to be of type "number"';
    {
      instance_port: converted,
    }
  ),
  withLoadBalancerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_name" expected to be of type "string"';
    {
      load_balancer_name: converted,
    }
  ),
  withPolicyNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_names" expected to be of type "set"';
    {
      policy_names: converted,
    }
  ),
  withPolicyNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_names" expected to be of type "set"';
    {
      policy_names+: converted,
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

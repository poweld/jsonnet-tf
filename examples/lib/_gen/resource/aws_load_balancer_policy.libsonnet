{
  local block = self,
  new(terraformName, loadBalancerName, policyName, policyTypeName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_load_balancer_policy",
          type:: "resource",
          attributes:: ["id", "load_balancer_name", "policy_name", "policy_type_name", "region"],
        },
      },
    }
    + block.withLoadBalancerName(loadBalancerName)
    + block.withPolicyName(policyName)
    + block.withPolicyTypeName(policyTypeName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLoadBalancerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_name" expected to be of type "string"';
    {
      load_balancer_name: converted,
    }
  ),
  withPolicyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_name" expected to be of type "string"';
    {
      policy_name: converted,
    }
  ),
  withPolicyTypeName(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_type_name" expected to be of type "string"';
    {
      policy_type_name: converted,
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
  policy_attribute:: {
    local block = self,
    new():: (
      {}
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
  withPolicyAttribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_attribute: value,
    }
  ),
  withPolicyAttributeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policy_attribute+: converted,
    }
  ),
}

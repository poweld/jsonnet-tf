{
  local block = self,
  new(terraformName, instanceName, lbName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_lb_attachment",
          type:: "resource",
          attributes:: ["id", "instance_name", "lb_name", "region"],
        },
      },
    }
    + block.withInstanceName(instanceName)
    + block.withLbName(lbName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_name" expected to be of type "string"';
    {
      instance_name: converted,
    }
  ),
  withLbName(value):: (
    local converted = value;
    assert std.isString(converted) : '"lb_name" expected to be of type "string"';
    {
      lb_name: converted,
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

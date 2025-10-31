{
  local block = self,
  new(terraformName, elb, instance):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elb_attachment",
          type:: "resource",
          attributes:: ["elb", "id", "instance", "region"],
        },
      },
    }
    + block.withElb(elb)
    + block.withInstance(instance)
  ),
  withElb(value):: (
    local converted = value;
    assert std.isString(converted) : '"elb" expected to be of type "string"';
    {
      elb: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstance(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance" expected to be of type "string"';
    {
      instance: converted,
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

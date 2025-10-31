{
  local block = self,
  new(terraformName, instanceName, staticIpName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_static_ip_attachment",
          type:: "resource",
          attributes:: ["id", "instance_name", "ip_address", "region", "static_ip_name"],
        },
      },
    }
    + block.withInstanceName(instanceName)
    + block.withStaticIpName(staticIpName)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withStaticIpName(value):: (
    local converted = value;
    assert std.isString(converted) : '"static_ip_name" expected to be of type "string"';
    {
      static_ip_name: converted,
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

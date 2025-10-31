{
  local block = self,
  new(terraformName, certificateName, lbName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_lb_certificate_attachment",
          type:: "resource",
          attributes:: ["certificate_name", "id", "lb_name", "region"],
        },
      },
    }
    + block.withCertificateName(certificateName)
    + block.withLbName(lbName)
  ),
  withCertificateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_name" expected to be of type "string"';
    {
      certificate_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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

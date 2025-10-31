{
  local block = self,
  new(terraformName, active):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_certificate",
          type:: "resource",
          attributes:: ["active", "arn", "ca_certificate_id", "ca_pem", "certificate_pem", "csr", "id", "private_key", "public_key", "region"],
        },
      },
    }
    + block.withActive(active)
  ),
  withActive(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  withCaPem(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_pem" expected to be of type "string"';
    {
      ca_pem: converted,
    }
  ),
  withCertificatePem(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_pem" expected to be of type "string"';
    {
      certificate_pem: converted,
    }
  ),
  withCsr(value):: (
    local converted = value;
    assert std.isString(converted) : '"csr" expected to be of type "string"';
    {
      csr: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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

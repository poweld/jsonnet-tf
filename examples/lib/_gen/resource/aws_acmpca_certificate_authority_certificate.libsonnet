{
  local block = self,
  new(terraformName, certificate, certificateAuthorityArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_acmpca_certificate_authority_certificate",
          type:: "resource",
          attributes:: ["certificate", "certificate_authority_arn", "certificate_chain", "id", "region"],
        },
      },
    }
    + block.withCertificate(certificate)
    + block.withCertificateAuthorityArn(certificateAuthorityArn)
  ),
  withCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  withCertificateAuthorityArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
    {
      certificate_authority_arn: converted,
    }
  ),
  withCertificateChain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
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

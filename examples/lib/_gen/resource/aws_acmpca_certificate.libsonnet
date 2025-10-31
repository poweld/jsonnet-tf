{
  local block = self,
  new(terraformName, certificateAuthorityArn, certificateSigningRequest, signingAlgorithm):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_acmpca_certificate",
          type:: "resource",
          attributes:: ["api_passthrough", "arn", "certificate", "certificate_authority_arn", "certificate_chain", "certificate_signing_request", "id", "region", "signing_algorithm", "template_arn"],
        },
      },
    }
    + block.withCertificateAuthorityArn(certificateAuthorityArn)
    + block.withCertificateSigningRequest(certificateSigningRequest)
    + block.withSigningAlgorithm(signingAlgorithm)
  ),
  withApiPassthrough(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_passthrough" expected to be of type "string"';
    {
      api_passthrough: converted,
    }
  ),
  withCertificateAuthorityArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
    {
      certificate_authority_arn: converted,
    }
  ),
  withCertificateSigningRequest(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_signing_request" expected to be of type "string"';
    {
      certificate_signing_request: converted,
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
  withSigningAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_algorithm" expected to be of type "string"';
    {
      signing_algorithm: converted,
    }
  ),
  withTemplateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_arn" expected to be of type "string"';
    {
      template_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  validity:: {
    local block = self,
    new(type, value):: (
      {}
      + block.withType(type)
      + block.withValue(value)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  withValidity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validity: value,
    }
  ),
  withValidityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validity+: converted,
    }
  ),
}

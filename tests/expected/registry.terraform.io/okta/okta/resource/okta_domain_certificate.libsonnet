{
  local block = self,

  new(terraformName, certificate, certificateChain, domainId, privateKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_domain_certificate",
          type:: "resource",
          attributes:: ["certificate", "certificate_chain", "domain_id", "id", "private_key", "type"],
        },
      },
    }
    + block.withCertificate(certificate)
    + block.withCertificateChain(certificateChain)
    + block.withDomainId(domainId)
    + block.withPrivateKey(privateKey)
  ),

  "#withCertificate":: "Certificate content",
  withCertificate(value):: (
    assert std.isString(value) : '"certificate" expected to be of type "string"';

    {
      certificate: value,
    }
  ),

  "#withCertificateChain":: "Certificate chain",
  withCertificateChain(value):: (
    assert std.isString(value) : '"certificate_chain" expected to be of type "string"';

    {
      certificate_chain: value,
    }
  ),

  "#withDomainId":: "Domain's ID",
  withDomainId(value):: (
    assert std.isString(value) : '"domain_id" expected to be of type "string"';

    {
      domain_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withPrivateKey":: "Certificate private key",
  withPrivateKey(value):: (
    assert std.isString(value) : '"private_key" expected to be of type "string"';

    {
      private_key: value,
    }
  ),

  "#withType":: "Certificate type. Valid value is `PEM`",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
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

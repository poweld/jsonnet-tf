{
  local block = self,
  new(name, certificate, certificate_chain, domain_id, private_key):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_domain_certificate",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["certificate", "certificate_chain", "domain_id", "id", "private_key", "type"],
      },
    }
    + block.withCertificate(certificate)
    + block.withCertificateChain(certificate_chain)
    + block.withDomainId(domain_id)
    + block.withPrivateKey(private_key)
  ),
  "#withCertificate":: "Certificate content",
  withCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  "#withCertificateChain":: "Certificate chain",
  withCertificateChain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  "#withDomainId":: "Domain's ID",
  withDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPrivateKey":: "Certificate private key",
  withPrivateKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
    }
  ),
  "#withType":: "Certificate type. Valid value is `PEM`",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}

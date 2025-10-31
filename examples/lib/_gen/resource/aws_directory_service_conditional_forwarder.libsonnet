{
  local block = self,
  new(terraformName, directoryId, dnsIps, remoteDomainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_directory_service_conditional_forwarder",
          type:: "resource",
          attributes:: ["directory_id", "dns_ips", "id", "region", "remote_domain_name"],
        },
      },
    }
    + block.withDirectoryId(directoryId)
    + block.withDnsIps(dnsIps)
    + block.withRemoteDomainName(remoteDomainName)
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withDnsIps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_ips" expected to be of type "list"';
    {
      dns_ips: converted,
    }
  ),
  withDnsIpsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_ips" expected to be of type "list"';
    {
      dns_ips+: converted,
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
  withRemoteDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"remote_domain_name" expected to be of type "string"';
    {
      remote_domain_name: converted,
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

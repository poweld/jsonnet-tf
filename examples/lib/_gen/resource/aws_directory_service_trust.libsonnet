{
  local block = self,
  new(terraformName, directoryId, remoteDomainName, trustDirection, trustPassword):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_directory_service_trust",
          type:: "resource",
          attributes:: ["conditional_forwarder_ip_addrs", "created_date_time", "delete_associated_conditional_forwarder", "directory_id", "id", "last_updated_date_time", "region", "remote_domain_name", "selective_auth", "state_last_updated_date_time", "trust_direction", "trust_password", "trust_state", "trust_state_reason", "trust_type"],
        },
      },
    }
    + block.withDirectoryId(directoryId)
    + block.withRemoteDomainName(remoteDomainName)
    + block.withTrustDirection(trustDirection)
    + block.withTrustPassword(trustPassword)
  ),
  withConditionalForwarderIpAddrs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"conditional_forwarder_ip_addrs" expected to be of type "set"';
    {
      conditional_forwarder_ip_addrs: converted,
    }
  ),
  withConditionalForwarderIpAddrsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"conditional_forwarder_ip_addrs" expected to be of type "set"';
    {
      conditional_forwarder_ip_addrs+: converted,
    }
  ),
  withDeleteAssociatedConditionalForwarder(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_associated_conditional_forwarder" expected to be of type "bool"';
    {
      delete_associated_conditional_forwarder: converted,
    }
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
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
  withSelectiveAuth(value):: (
    local converted = value;
    assert std.isString(converted) : '"selective_auth" expected to be of type "string"';
    {
      selective_auth: converted,
    }
  ),
  withTrustDirection(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_direction" expected to be of type "string"';
    {
      trust_direction: converted,
    }
  ),
  withTrustPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_password" expected to be of type "string"';
    {
      trust_password: converted,
    }
  ),
  withTrustType(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_type" expected to be of type "string"';
    {
      trust_type: converted,
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

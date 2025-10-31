{
  local block = self,
  new(terraformName, agentArns):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_location_hdfs",
          type:: "resource",
          attributes:: ["agent_arns", "arn", "authentication_type", "block_size", "id", "kerberos_keytab", "kerberos_keytab_base64", "kerberos_krb5_conf", "kerberos_krb5_conf_base64", "kerberos_principal", "kms_key_provider_uri", "region", "replication_factor", "simple_user", "subdirectory", "tags", "tags_all", "uri"],
        },
      },
    }
    + block.withAgentArns(agentArns)
  ),
  withAgentArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns: converted,
    }
  ),
  withAgentArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns+: converted,
    }
  ),
  withAuthenticationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
    }
  ),
  withBlockSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"block_size" expected to be of type "number"';
    {
      block_size: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKerberosKeytab(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_keytab" expected to be of type "string"';
    {
      kerberos_keytab: converted,
    }
  ),
  withKerberosKeytabBase64(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_keytab_base64" expected to be of type "string"';
    {
      kerberos_keytab_base64: converted,
    }
  ),
  withKerberosKrb5Conf(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_krb5_conf" expected to be of type "string"';
    {
      kerberos_krb5_conf: converted,
    }
  ),
  withKerberosKrb5ConfBase64(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_krb5_conf_base64" expected to be of type "string"';
    {
      kerberos_krb5_conf_base64: converted,
    }
  ),
  withKerberosPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"kerberos_principal" expected to be of type "string"';
    {
      kerberos_principal: converted,
    }
  ),
  withKmsKeyProviderUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_provider_uri" expected to be of type "string"';
    {
      kms_key_provider_uri: converted,
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
  withReplicationFactor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"replication_factor" expected to be of type "number"';
    {
      replication_factor: converted,
    }
  ),
  withSimpleUser(value):: (
    local converted = value;
    assert std.isString(converted) : '"simple_user" expected to be of type "string"';
    {
      simple_user: converted,
    }
  ),
  withSubdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  name_node:: {
    local block = self,
    new(hostname, port):: (
      {}
      + block.withHostname(hostname)
      + block.withPort(port)
    ),
    withHostname(value):: (
      local converted = value;
      assert std.isString(converted) : '"hostname" expected to be of type "string"';
      {
        hostname: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
  },
  qop_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withDataTransferProtection(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_transfer_protection" expected to be of type "string"';
      {
        data_transfer_protection: converted,
      }
    ),
    withRpcProtection(value):: (
      local converted = value;
      assert std.isString(converted) : '"rpc_protection" expected to be of type "string"';
      {
        rpc_protection: converted,
      }
    ),
  },
  withNameNode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_node: value,
    }
  ),
  withQopConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      qop_configuration: value,
    }
  ),
  withNameNodeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_node+: converted,
    }
  ),
  withQopConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      qop_configuration+: converted,
    }
  ),
}

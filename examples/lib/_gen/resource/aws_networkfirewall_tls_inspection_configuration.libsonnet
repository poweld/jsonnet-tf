{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkfirewall_tls_inspection_configuration",
          type:: "resource",
          attributes:: ["arn", "certificate_authority", "certificates", "description", "encryption_configuration", "id", "name", "number_of_associations", "region", "tags", "tags_all", "tls_inspection_configuration_id", "update_token"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
    {
      encryption_configuration: converted,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
    {
      encryption_configuration+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  tls_inspection_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    server_certificate_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withCertificateAuthorityArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
        {
          certificate_authority_arn: converted,
        }
      ),
      check_certificate_revocation_status:: {
        local block = self,
        new():: (
          {}
        ),
        withRevokedStatusAction(value):: (
          local converted = value;
          assert std.isString(converted) : '"revoked_status_action" expected to be of type "string"';
          {
            revoked_status_action: converted,
          }
        ),
        withUnknownStatusAction(value):: (
          local converted = value;
          assert std.isString(converted) : '"unknown_status_action" expected to be of type "string"';
          {
            unknown_status_action: converted,
          }
        ),
      },
      scope:: {
        local block = self,
        new(protocols):: (
          {}
          + block.withProtocols(protocols)
        ),
        withProtocols(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
          {
            protocols: converted,
          }
        ),
        withProtocolsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
          {
            protocols+: converted,
          }
        ),
        destination:: {
          local block = self,
          new(addressDefinition):: (
            {}
            + block.withAddressDefinition(addressDefinition)
          ),
          withAddressDefinition(value):: (
            local converted = value;
            assert std.isString(converted) : '"address_definition" expected to be of type "string"';
            {
              address_definition: converted,
            }
          ),
        },
        destination_ports:: {
          local block = self,
          new(fromPort, toPort):: (
            {}
            + block.withFromPort(fromPort)
            + block.withToPort(toPort)
          ),
          withFromPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
            {
              from_port: converted,
            }
          ),
          withToPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
            {
              to_port: converted,
            }
          ),
        },
        source:: {
          local block = self,
          new(addressDefinition):: (
            {}
            + block.withAddressDefinition(addressDefinition)
          ),
          withAddressDefinition(value):: (
            local converted = value;
            assert std.isString(converted) : '"address_definition" expected to be of type "string"';
            {
              address_definition: converted,
            }
          ),
        },
        source_ports:: {
          local block = self,
          new(fromPort, toPort):: (
            {}
            + block.withFromPort(fromPort)
            + block.withToPort(toPort)
          ),
          withFromPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
            {
              from_port: converted,
            }
          ),
          withToPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
            {
              to_port: converted,
            }
          ),
        },
        withDestination(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination: value,
          }
        ),
        withDestinationPorts(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_ports: value,
          }
        ),
        withSource(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source: value,
          }
        ),
        withSourcePorts(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source_ports: value,
          }
        ),
        withDestinationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination+: converted,
          }
        ),
        withDestinationPortsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_ports+: converted,
          }
        ),
        withSourceMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source+: converted,
          }
        ),
        withSourcePortsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            source_ports+: converted,
          }
        ),
      },
      server_certificate:: {
        local block = self,
        new():: (
          {}
        ),
        withResourceArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
          {
            resource_arn: converted,
          }
        ),
      },
      withCheckCertificateRevocationStatus(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          check_certificate_revocation_status: value,
        }
      ),
      withScope(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scope: value,
        }
      ),
      withServerCertificate(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          server_certificate: value,
        }
      ),
      withCheckCertificateRevocationStatusMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          check_certificate_revocation_status+: converted,
        }
      ),
      withScopeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scope+: converted,
        }
      ),
      withServerCertificateMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          server_certificate+: converted,
        }
      ),
    },
    withServerCertificateConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_certificate_configuration: value,
      }
    ),
    withServerCertificateConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_certificate_configuration+: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTlsInspectionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_inspection_configuration: value,
    }
  ),
  withTlsInspectionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_inspection_configuration+: converted,
    }
  ),
}

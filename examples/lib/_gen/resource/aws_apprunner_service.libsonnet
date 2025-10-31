{
  local block = self,
  new(terraformName, serviceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apprunner_service",
          type:: "resource",
          attributes:: ["arn", "auto_scaling_configuration_arn", "id", "region", "service_id", "service_name", "service_url", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withServiceName(serviceName)
  ),
  withAutoScalingConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_scaling_configuration_arn" expected to be of type "string"';
    {
      auto_scaling_configuration_arn: converted,
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
  withServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
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
  encryption_configuration:: {
    local block = self,
    new(kmsKey):: (
      {}
      + block.withKmsKey(kmsKey)
    ),
    withKmsKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key" expected to be of type "string"';
      {
        kms_key: converted,
      }
    ),
  },
  health_check_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withHealthyThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
      {
        healthy_threshold: converted,
      }
    ),
    withInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
      {
        timeout: converted,
      }
    ),
    withUnhealthyThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
      {
        unhealthy_threshold: converted,
      }
    ),
  },
  instance_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withCpu(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu" expected to be of type "string"';
      {
        cpu: converted,
      }
    ),
    withInstanceRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_role_arn" expected to be of type "string"';
      {
        instance_role_arn: converted,
      }
    ),
    withMemory(value):: (
      local converted = value;
      assert std.isString(converted) : '"memory" expected to be of type "string"';
      {
        memory: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withIpAddressType(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    egress_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEgressType(value):: (
        local converted = value;
        assert std.isString(converted) : '"egress_type" expected to be of type "string"';
        {
          egress_type: converted,
        }
      ),
      withVpcConnectorArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"vpc_connector_arn" expected to be of type "string"';
        {
          vpc_connector_arn: converted,
        }
      ),
    },
    ingress_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withIsPubliclyAccessible(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_publicly_accessible" expected to be of type "bool"';
        {
          is_publicly_accessible: converted,
        }
      ),
    },
    withEgressConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        egress_configuration: value,
      }
    ),
    withIngressConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ingress_configuration: value,
      }
    ),
    withEgressConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        egress_configuration+: converted,
      }
    ),
    withIngressConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ingress_configuration+: converted,
      }
    ),
  },
  observability_configuration:: {
    local block = self,
    new(observabilityEnabled):: (
      {}
      + block.withObservabilityEnabled(observabilityEnabled)
    ),
    withObservabilityConfigurationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"observability_configuration_arn" expected to be of type "string"';
      {
        observability_configuration_arn: converted,
      }
    ),
    withObservabilityEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"observability_enabled" expected to be of type "bool"';
      {
        observability_enabled: converted,
      }
    ),
  },
  source_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAutoDeploymentsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"auto_deployments_enabled" expected to be of type "bool"';
      {
        auto_deployments_enabled: converted,
      }
    ),
    authentication_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withAccessRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"access_role_arn" expected to be of type "string"';
        {
          access_role_arn: converted,
        }
      ),
      withConnectionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_arn" expected to be of type "string"';
        {
          connection_arn: converted,
        }
      ),
    },
    code_repository:: {
      local block = self,
      new(repositoryUrl):: (
        {}
        + block.withRepositoryUrl(repositoryUrl)
      ),
      withRepositoryUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_url" expected to be of type "string"';
        {
          repository_url: converted,
        }
      ),
      withSourceDirectory(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_directory" expected to be of type "string"';
        {
          source_directory: converted,
        }
      ),
      code_configuration:: {
        local block = self,
        new(configurationSource):: (
          {}
          + block.withConfigurationSource(configurationSource)
        ),
        withConfigurationSource(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_source" expected to be of type "string"';
          {
            configuration_source: converted,
          }
        ),
        code_configuration_values:: {
          local block = self,
          new(runtime):: (
            {}
            + block.withRuntime(runtime)
          ),
          withBuildCommand(value):: (
            local converted = value;
            assert std.isString(converted) : '"build_command" expected to be of type "string"';
            {
              build_command: converted,
            }
          ),
          withPort(value):: (
            local converted = value;
            assert std.isString(converted) : '"port" expected to be of type "string"';
            {
              port: converted,
            }
          ),
          withRuntime(value):: (
            local converted = value;
            assert std.isString(converted) : '"runtime" expected to be of type "string"';
            {
              runtime: converted,
            }
          ),
          withRuntimeEnvironmentSecrets(value):: (
            local converted = value;
            assert std.isObject(converted) : '"runtime_environment_secrets" expected to be of type "map"';
            {
              runtime_environment_secrets: converted,
            }
          ),
          withRuntimeEnvironmentVariables(value):: (
            local converted = value;
            assert std.isObject(converted) : '"runtime_environment_variables" expected to be of type "map"';
            {
              runtime_environment_variables: converted,
            }
          ),
          withStartCommand(value):: (
            local converted = value;
            assert std.isString(converted) : '"start_command" expected to be of type "string"';
            {
              start_command: converted,
            }
          ),
        },
        withCodeConfigurationValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            code_configuration_values: value,
          }
        ),
        withCodeConfigurationValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            code_configuration_values+: converted,
          }
        ),
      },
      source_code_version:: {
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
      withCodeConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_configuration: value,
        }
      ),
      withSourceCodeVersion(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_code_version: value,
        }
      ),
      withCodeConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_configuration+: converted,
        }
      ),
      withSourceCodeVersionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_code_version+: converted,
        }
      ),
    },
    image_repository:: {
      local block = self,
      new(imageIdentifier, imageRepositoryType):: (
        {}
        + block.withImageIdentifier(imageIdentifier)
        + block.withImageRepositoryType(imageRepositoryType)
      ),
      withImageIdentifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_identifier" expected to be of type "string"';
        {
          image_identifier: converted,
        }
      ),
      withImageRepositoryType(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_repository_type" expected to be of type "string"';
        {
          image_repository_type: converted,
        }
      ),
      image_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withPort(value):: (
          local converted = value;
          assert std.isString(converted) : '"port" expected to be of type "string"';
          {
            port: converted,
          }
        ),
        withRuntimeEnvironmentSecrets(value):: (
          local converted = value;
          assert std.isObject(converted) : '"runtime_environment_secrets" expected to be of type "map"';
          {
            runtime_environment_secrets: converted,
          }
        ),
        withRuntimeEnvironmentVariables(value):: (
          local converted = value;
          assert std.isObject(converted) : '"runtime_environment_variables" expected to be of type "map"';
          {
            runtime_environment_variables: converted,
          }
        ),
        withStartCommand(value):: (
          local converted = value;
          assert std.isString(converted) : '"start_command" expected to be of type "string"';
          {
            start_command: converted,
          }
        ),
      },
      withImageConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_configuration: value,
        }
      ),
      withImageConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_configuration+: converted,
        }
      ),
    },
    withAuthenticationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration: value,
      }
    ),
    withCodeRepository(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository: value,
      }
    ),
    withImageRepository(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_repository: value,
      }
    ),
    withAuthenticationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration+: converted,
      }
    ),
    withCodeRepositoryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository+: converted,
      }
    ),
    withImageRepositoryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_repository+: converted,
      }
    ),
  },
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withHealthCheckConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_configuration: value,
    }
  ),
  withInstanceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration: value,
    }
  ),
  withNetworkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  withObservabilityConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      observability_configuration: value,
    }
  ),
  withSourceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_configuration: value,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  withHealthCheckConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_configuration+: converted,
    }
  ),
  withInstanceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_configuration+: converted,
    }
  ),
  withNetworkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
  withObservabilityConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      observability_configuration+: converted,
    }
  ),
  withSourceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_configuration+: converted,
    }
  ),
}

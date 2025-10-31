{
  local block = self,
  new(terraformName, executionRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_model",
          type:: "resource",
          attributes:: ["arn", "enable_network_isolation", "execution_role_arn", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withExecutionRoleArn(executionRoleArn)
  ),
  withEnableNetworkIsolation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_network_isolation" expected to be of type "bool"';
    {
      enable_network_isolation: converted,
    }
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  container:: {
    local block = self,
    new():: (
      {}
    ),
    withContainerHostname(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_hostname" expected to be of type "string"';
      {
        container_hostname: converted,
      }
    ),
    withEnvironment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    withImage(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    withInferenceSpecificationName(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_specification_name" expected to be of type "string"';
      {
        inference_specification_name: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withModelDataUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_data_url" expected to be of type "string"';
      {
        model_data_url: converted,
      }
    ),
    withModelPackageName(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_package_name" expected to be of type "string"';
      {
        model_package_name: converted,
      }
    ),
    image_config:: {
      local block = self,
      new(repositoryAccessMode):: (
        {}
        + block.withRepositoryAccessMode(repositoryAccessMode)
      ),
      withRepositoryAccessMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_access_mode" expected to be of type "string"';
        {
          repository_access_mode: converted,
        }
      ),
      repository_auth_config:: {
        local block = self,
        new(repositoryCredentialsProviderArn):: (
          {}
          + block.withRepositoryCredentialsProviderArn(repositoryCredentialsProviderArn)
        ),
        withRepositoryCredentialsProviderArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_credentials_provider_arn" expected to be of type "string"';
          {
            repository_credentials_provider_arn: converted,
          }
        ),
      },
      withRepositoryAuthConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config: value,
        }
      ),
      withRepositoryAuthConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config+: converted,
        }
      ),
    },
    model_data_source:: {
      local block = self,
      new():: (
        {}
      ),
      s3_data_source:: {
        local block = self,
        new(compressionType, s3DataType, s3Uri):: (
          {}
          + block.withCompressionType(compressionType)
          + block.withS3DataType(s3DataType)
          + block.withS3Uri(s3Uri)
        ),
        withCompressionType(value):: (
          local converted = value;
          assert std.isString(converted) : '"compression_type" expected to be of type "string"';
          {
            compression_type: converted,
          }
        ),
        withS3DataType(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_data_type" expected to be of type "string"';
          {
            s3_data_type: converted,
          }
        ),
        withS3Uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
          {
            s3_uri: converted,
          }
        ),
        model_access_config:: {
          local block = self,
          new(acceptEula):: (
            {}
            + block.withAcceptEula(acceptEula)
          ),
          withAcceptEula(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"accept_eula" expected to be of type "bool"';
            {
              accept_eula: converted,
            }
          ),
        },
        withModelAccessConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config: value,
          }
        ),
        withModelAccessConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config+: converted,
          }
        ),
      },
      withS3DataSource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source: value,
        }
      ),
      withS3DataSourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source+: converted,
        }
      ),
    },
    multi_model_config:: {
      local block = self,
      new():: (
        {}
      ),
      withModelCacheSetting(value):: (
        local converted = value;
        assert std.isString(converted) : '"model_cache_setting" expected to be of type "string"';
        {
          model_cache_setting: converted,
        }
      ),
    },
    withImageConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config: value,
      }
    ),
    withModelDataSource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source: value,
      }
    ),
    withMultiModelConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config: value,
      }
    ),
    withImageConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config+: converted,
      }
    ),
    withModelDataSourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source+: converted,
      }
    ),
    withMultiModelConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config+: converted,
      }
    ),
  },
  inference_execution_config:: {
    local block = self,
    new(mode):: (
      {}
      + block.withMode(mode)
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  primary_container:: {
    local block = self,
    new():: (
      {}
    ),
    withContainerHostname(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_hostname" expected to be of type "string"';
      {
        container_hostname: converted,
      }
    ),
    withEnvironment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    withImage(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    withInferenceSpecificationName(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_specification_name" expected to be of type "string"';
      {
        inference_specification_name: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withModelDataUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_data_url" expected to be of type "string"';
      {
        model_data_url: converted,
      }
    ),
    withModelPackageName(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_package_name" expected to be of type "string"';
      {
        model_package_name: converted,
      }
    ),
    image_config:: {
      local block = self,
      new(repositoryAccessMode):: (
        {}
        + block.withRepositoryAccessMode(repositoryAccessMode)
      ),
      withRepositoryAccessMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_access_mode" expected to be of type "string"';
        {
          repository_access_mode: converted,
        }
      ),
      repository_auth_config:: {
        local block = self,
        new(repositoryCredentialsProviderArn):: (
          {}
          + block.withRepositoryCredentialsProviderArn(repositoryCredentialsProviderArn)
        ),
        withRepositoryCredentialsProviderArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"repository_credentials_provider_arn" expected to be of type "string"';
          {
            repository_credentials_provider_arn: converted,
          }
        ),
      },
      withRepositoryAuthConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config: value,
        }
      ),
      withRepositoryAuthConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_auth_config+: converted,
        }
      ),
    },
    model_data_source:: {
      local block = self,
      new():: (
        {}
      ),
      s3_data_source:: {
        local block = self,
        new(compressionType, s3DataType, s3Uri):: (
          {}
          + block.withCompressionType(compressionType)
          + block.withS3DataType(s3DataType)
          + block.withS3Uri(s3Uri)
        ),
        withCompressionType(value):: (
          local converted = value;
          assert std.isString(converted) : '"compression_type" expected to be of type "string"';
          {
            compression_type: converted,
          }
        ),
        withS3DataType(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_data_type" expected to be of type "string"';
          {
            s3_data_type: converted,
          }
        ),
        withS3Uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
          {
            s3_uri: converted,
          }
        ),
        model_access_config:: {
          local block = self,
          new(acceptEula):: (
            {}
            + block.withAcceptEula(acceptEula)
          ),
          withAcceptEula(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"accept_eula" expected to be of type "bool"';
            {
              accept_eula: converted,
            }
          ),
        },
        withModelAccessConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config: value,
          }
        ),
        withModelAccessConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            model_access_config+: converted,
          }
        ),
      },
      withS3DataSource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source: value,
        }
      ),
      withS3DataSourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_data_source+: converted,
        }
      ),
    },
    multi_model_config:: {
      local block = self,
      new():: (
        {}
      ),
      withModelCacheSetting(value):: (
        local converted = value;
        assert std.isString(converted) : '"model_cache_setting" expected to be of type "string"';
        {
          model_cache_setting: converted,
        }
      ),
    },
    withImageConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config: value,
      }
    ),
    withModelDataSource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source: value,
      }
    ),
    withMultiModelConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config: value,
      }
    ),
    withImageConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        image_config+: converted,
      }
    ),
    withModelDataSourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        model_data_source+: converted,
      }
    ),
    withMultiModelConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        multi_model_config+: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(securityGroupIds, subnets):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnets(subnets)
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    withSubnetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
  },
  withContainer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container: value,
    }
  ),
  withInferenceExecutionConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inference_execution_config: value,
    }
  ),
  withPrimaryContainer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      primary_container: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withContainerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container+: converted,
    }
  ),
  withInferenceExecutionConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inference_execution_config+: converted,
    }
  ),
  withPrimaryContainerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      primary_container+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}

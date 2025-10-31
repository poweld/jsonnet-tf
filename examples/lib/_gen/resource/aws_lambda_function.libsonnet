{
  local block = self,
  new(terraformName, functionName, role):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_function",
          type:: "resource",
          attributes:: ["architectures", "arn", "code_sha256", "code_signing_config_arn", "description", "filename", "function_name", "handler", "id", "image_uri", "invoke_arn", "kms_key_arn", "last_modified", "layers", "memory_size", "package_type", "publish", "qualified_arn", "qualified_invoke_arn", "region", "replace_security_groups_on_destroy", "replacement_security_group_ids", "reserved_concurrent_executions", "role", "runtime", "s3_bucket", "s3_key", "s3_object_version", "signing_job_arn", "signing_profile_version_arn", "skip_destroy", "source_code_hash", "source_code_size", "source_kms_key_arn", "tags", "tags_all", "timeout", "version"],
        },
      },
    }
    + block.withFunctionName(functionName)
    + block.withRole(role)
  ),
  withArchitectures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"architectures" expected to be of type "list"';
    {
      architectures: converted,
    }
  ),
  withArchitecturesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"architectures" expected to be of type "list"';
    {
      architectures+: converted,
    }
  ),
  withCodeSigningConfigArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_signing_config_arn" expected to be of type "string"';
    {
      code_signing_config_arn: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFilename(value):: (
    local converted = value;
    assert std.isString(converted) : '"filename" expected to be of type "string"';
    {
      filename: converted,
    }
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withHandler(value):: (
    local converted = value;
    assert std.isString(converted) : '"handler" expected to be of type "string"';
    {
      handler: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_uri" expected to be of type "string"';
    {
      image_uri: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withLayers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"layers" expected to be of type "list"';
    {
      layers: converted,
    }
  ),
  withLayersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"layers" expected to be of type "list"';
    {
      layers+: converted,
    }
  ),
  withMemorySize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"memory_size" expected to be of type "number"';
    {
      memory_size: converted,
    }
  ),
  withPackageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_type" expected to be of type "string"';
    {
      package_type: converted,
    }
  ),
  withPublish(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publish" expected to be of type "bool"';
    {
      publish: converted,
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
  withReplaceSecurityGroupsOnDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"replace_security_groups_on_destroy" expected to be of type "bool"';
    {
      replace_security_groups_on_destroy: converted,
    }
  ),
  withReplacementSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"replacement_security_group_ids" expected to be of type "set"';
    {
      replacement_security_group_ids: converted,
    }
  ),
  withReplacementSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"replacement_security_group_ids" expected to be of type "set"';
    {
      replacement_security_group_ids+: converted,
    }
  ),
  withReservedConcurrentExecutions(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"reserved_concurrent_executions" expected to be of type "number"';
    {
      reserved_concurrent_executions: converted,
    }
  ),
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  withRuntime(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime" expected to be of type "string"';
    {
      runtime: converted,
    }
  ),
  withS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  withS3Key(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key" expected to be of type "string"';
    {
      s3_key: converted,
    }
  ),
  withS3ObjectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_object_version" expected to be of type "string"';
    {
      s3_object_version: converted,
    }
  ),
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  withSourceCodeHash(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_code_hash" expected to be of type "string"';
    {
      source_code_hash: converted,
    }
  ),
  withSourceKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_kms_key_arn" expected to be of type "string"';
    {
      source_kms_key_arn: converted,
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
  withTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
    {
      timeout: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  dead_letter_config:: {
    local block = self,
    new(targetArn):: (
      {}
      + block.withTargetArn(targetArn)
    ),
    withTargetArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_arn" expected to be of type "string"';
      {
        target_arn: converted,
      }
    ),
  },
  environment:: {
    local block = self,
    new():: (
      {}
    ),
    withVariables(value):: (
      local converted = value;
      assert std.isObject(converted) : '"variables" expected to be of type "map"';
      {
        variables: converted,
      }
    ),
  },
  ephemeral_storage:: {
    local block = self,
    new():: (
      {}
    ),
    withSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
  },
  file_system_config:: {
    local block = self,
    new(arn, localMountPath):: (
      {}
      + block.withArn(arn)
      + block.withLocalMountPath(localMountPath)
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    withLocalMountPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_mount_path" expected to be of type "string"';
      {
        local_mount_path: converted,
      }
    ),
  },
  image_config:: {
    local block = self,
    new():: (
      {}
    ),
    withCommand(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command: converted,
      }
    ),
    withCommandMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command+: converted,
      }
    ),
    withEntryPoint(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"entry_point" expected to be of type "list"';
      {
        entry_point: converted,
      }
    ),
    withEntryPointMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"entry_point" expected to be of type "list"';
      {
        entry_point+: converted,
      }
    ),
    withWorkingDirectory(value):: (
      local converted = value;
      assert std.isString(converted) : '"working_directory" expected to be of type "string"';
      {
        working_directory: converted,
      }
    ),
  },
  logging_config:: {
    local block = self,
    new(logFormat):: (
      {}
      + block.withLogFormat(logFormat)
    ),
    withApplicationLogLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"application_log_level" expected to be of type "string"';
      {
        application_log_level: converted,
      }
    ),
    withLogFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_format" expected to be of type "string"';
      {
        log_format: converted,
      }
    ),
    withLogGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_group" expected to be of type "string"';
      {
        log_group: converted,
      }
    ),
    withSystemLogLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"system_log_level" expected to be of type "string"';
      {
        system_log_level: converted,
      }
    ),
  },
  snap_start:: {
    local block = self,
    new(applyOn):: (
      {}
      + block.withApplyOn(applyOn)
    ),
    withApplyOn(value):: (
      local converted = value;
      assert std.isString(converted) : '"apply_on" expected to be of type "string"';
      {
        apply_on: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  tracing_config:: {
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
  vpc_config:: {
    local block = self,
    new(securityGroupIds, subnetIds):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnetIds(subnetIds)
    ),
    withIpv6AllowedForDualStack(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ipv6_allowed_for_dual_stack" expected to be of type "bool"';
      {
        ipv6_allowed_for_dual_stack: converted,
      }
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
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  withDeadLetterConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config: value,
    }
  ),
  withEnvironment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment: value,
    }
  ),
  withEphemeralStorage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage: value,
    }
  ),
  withFileSystemConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_config: value,
    }
  ),
  withImageConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_config: value,
    }
  ),
  withLoggingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  withSnapStart(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snap_start: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTracingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracing_config: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withDeadLetterConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config+: converted,
    }
  ),
  withEnvironmentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment+: converted,
    }
  ),
  withEphemeralStorageMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage+: converted,
    }
  ),
  withFileSystemConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_config+: converted,
    }
  ),
  withImageConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_config+: converted,
    }
  ),
  withLoggingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
  withSnapStartMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snap_start+: converted,
    }
  ),
  withTracingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracing_config+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}

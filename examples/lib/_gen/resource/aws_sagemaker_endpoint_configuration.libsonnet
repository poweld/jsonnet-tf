{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_endpoint_configuration",
          type:: "resource",
          attributes:: ["arn", "id", "kms_key_arn", "name", "name_prefix", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  async_inference_config:: {
    local block = self,
    new():: (
      {}
    ),
    client_config:: {
      local block = self,
      new():: (
        {}
      ),
      withMaxConcurrentInvocationsPerInstance(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_concurrent_invocations_per_instance" expected to be of type "number"';
        {
          max_concurrent_invocations_per_instance: converted,
        }
      ),
    },
    output_config:: {
      local block = self,
      new(s3OutputPath):: (
        {}
        + block.withS3OutputPath(s3OutputPath)
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      withS3FailurePath(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_failure_path" expected to be of type "string"';
        {
          s3_failure_path: converted,
        }
      ),
      withS3OutputPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
        {
          s3_output_path: converted,
        }
      ),
      notification_config:: {
        local block = self,
        new():: (
          {}
        ),
        withErrorTopic(value):: (
          local converted = value;
          assert std.isString(converted) : '"error_topic" expected to be of type "string"';
          {
            error_topic: converted,
          }
        ),
        withIncludeInferenceResponseIn(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_inference_response_in" expected to be of type "set"';
          {
            include_inference_response_in: converted,
          }
        ),
        withIncludeInferenceResponseInMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_inference_response_in" expected to be of type "set"';
          {
            include_inference_response_in+: converted,
          }
        ),
        withSuccessTopic(value):: (
          local converted = value;
          assert std.isString(converted) : '"success_topic" expected to be of type "string"';
          {
            success_topic: converted,
          }
        ),
      },
      withNotificationConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config: value,
        }
      ),
      withNotificationConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config+: converted,
        }
      ),
    },
    withClientConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        client_config: value,
      }
    ),
    withOutputConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_config: value,
      }
    ),
    withClientConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        client_config+: converted,
      }
    ),
    withOutputConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        output_config+: converted,
      }
    ),
  },
  data_capture_config:: {
    local block = self,
    new(destinationS3Uri, initialSamplingPercentage):: (
      {}
      + block.withDestinationS3Uri(destinationS3Uri)
      + block.withInitialSamplingPercentage(initialSamplingPercentage)
    ),
    withDestinationS3Uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_s3_uri" expected to be of type "string"';
      {
        destination_s3_uri: converted,
      }
    ),
    withEnableCapture(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_capture" expected to be of type "bool"';
      {
        enable_capture: converted,
      }
    ),
    withInitialSamplingPercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_sampling_percentage" expected to be of type "number"';
      {
        initial_sampling_percentage: converted,
      }
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    capture_content_type_header:: {
      local block = self,
      new():: (
        {}
      ),
      withCsvContentTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"csv_content_types" expected to be of type "set"';
        {
          csv_content_types: converted,
        }
      ),
      withCsvContentTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"csv_content_types" expected to be of type "set"';
        {
          csv_content_types+: converted,
        }
      ),
      withJsonContentTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"json_content_types" expected to be of type "set"';
        {
          json_content_types: converted,
        }
      ),
      withJsonContentTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"json_content_types" expected to be of type "set"';
        {
          json_content_types+: converted,
        }
      ),
    },
    capture_options:: {
      local block = self,
      new(captureMode):: (
        {}
        + block.withCaptureMode(captureMode)
      ),
      withCaptureMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"capture_mode" expected to be of type "string"';
        {
          capture_mode: converted,
        }
      ),
    },
    withCaptureContentTypeHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_content_type_header: value,
      }
    ),
    withCaptureOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_options: value,
      }
    ),
    withCaptureContentTypeHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_content_type_header+: converted,
      }
    ),
    withCaptureOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capture_options+: converted,
      }
    ),
  },
  production_variants:: {
    local block = self,
    new(modelName):: (
      {}
      + block.withModelName(modelName)
    ),
    withAcceleratorType(value):: (
      local converted = value;
      assert std.isString(converted) : '"accelerator_type" expected to be of type "string"';
      {
        accelerator_type: converted,
      }
    ),
    withContainerStartupHealthCheckTimeoutInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_startup_health_check_timeout_in_seconds" expected to be of type "number"';
      {
        container_startup_health_check_timeout_in_seconds: converted,
      }
    ),
    withEnableSsmAccess(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_ssm_access" expected to be of type "bool"';
      {
        enable_ssm_access: converted,
      }
    ),
    withInferenceAmiVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_ami_version" expected to be of type "string"';
      {
        inference_ami_version: converted,
      }
    ),
    withInitialInstanceCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_instance_count" expected to be of type "number"';
      {
        initial_instance_count: converted,
      }
    ),
    withInitialVariantWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_variant_weight" expected to be of type "number"';
      {
        initial_variant_weight: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withModelDataDownloadTimeoutInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"model_data_download_timeout_in_seconds" expected to be of type "number"';
      {
        model_data_download_timeout_in_seconds: converted,
      }
    ),
    withModelName(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_name" expected to be of type "string"';
      {
        model_name: converted,
      }
    ),
    withVariantName(value):: (
      local converted = value;
      assert std.isString(converted) : '"variant_name" expected to be of type "string"';
      {
        variant_name: converted,
      }
    ),
    withVolumeSizeInGb(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size_in_gb" expected to be of type "number"';
      {
        volume_size_in_gb: converted,
      }
    ),
    core_dump_config:: {
      local block = self,
      new(destinationS3Uri):: (
        {}
        + block.withDestinationS3Uri(destinationS3Uri)
      ),
      withDestinationS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_s3_uri" expected to be of type "string"';
        {
          destination_s3_uri: converted,
        }
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
    },
    managed_instance_scaling:: {
      local block = self,
      new():: (
        {}
      ),
      withMaxInstanceCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_instance_count" expected to be of type "number"';
        {
          max_instance_count: converted,
        }
      ),
      withMinInstanceCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_instance_count" expected to be of type "number"';
        {
          min_instance_count: converted,
        }
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    routing_config:: {
      local block = self,
      new(routingStrategy):: (
        {}
        + block.withRoutingStrategy(routingStrategy)
      ),
      withRoutingStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"routing_strategy" expected to be of type "string"';
        {
          routing_strategy: converted,
        }
      ),
    },
    serverless_config:: {
      local block = self,
      new(maxConcurrency, memorySizeInMb):: (
        {}
        + block.withMaxConcurrency(maxConcurrency)
        + block.withMemorySizeInMb(memorySizeInMb)
      ),
      withMaxConcurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_concurrency" expected to be of type "number"';
        {
          max_concurrency: converted,
        }
      ),
      withMemorySizeInMb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory_size_in_mb" expected to be of type "number"';
        {
          memory_size_in_mb: converted,
        }
      ),
      withProvisionedConcurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"provisioned_concurrency" expected to be of type "number"';
        {
          provisioned_concurrency: converted,
        }
      ),
    },
    withCoreDumpConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config: value,
      }
    ),
    withManagedInstanceScaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling: value,
      }
    ),
    withRoutingConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config: value,
      }
    ),
    withServerlessConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config: value,
      }
    ),
    withCoreDumpConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config+: converted,
      }
    ),
    withManagedInstanceScalingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling+: converted,
      }
    ),
    withRoutingConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config+: converted,
      }
    ),
    withServerlessConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config+: converted,
      }
    ),
  },
  shadow_production_variants:: {
    local block = self,
    new(modelName):: (
      {}
      + block.withModelName(modelName)
    ),
    withAcceleratorType(value):: (
      local converted = value;
      assert std.isString(converted) : '"accelerator_type" expected to be of type "string"';
      {
        accelerator_type: converted,
      }
    ),
    withContainerStartupHealthCheckTimeoutInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_startup_health_check_timeout_in_seconds" expected to be of type "number"';
      {
        container_startup_health_check_timeout_in_seconds: converted,
      }
    ),
    withEnableSsmAccess(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_ssm_access" expected to be of type "bool"';
      {
        enable_ssm_access: converted,
      }
    ),
    withInferenceAmiVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"inference_ami_version" expected to be of type "string"';
      {
        inference_ami_version: converted,
      }
    ),
    withInitialInstanceCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_instance_count" expected to be of type "number"';
      {
        initial_instance_count: converted,
      }
    ),
    withInitialVariantWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"initial_variant_weight" expected to be of type "number"';
      {
        initial_variant_weight: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withModelDataDownloadTimeoutInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"model_data_download_timeout_in_seconds" expected to be of type "number"';
      {
        model_data_download_timeout_in_seconds: converted,
      }
    ),
    withModelName(value):: (
      local converted = value;
      assert std.isString(converted) : '"model_name" expected to be of type "string"';
      {
        model_name: converted,
      }
    ),
    withVariantName(value):: (
      local converted = value;
      assert std.isString(converted) : '"variant_name" expected to be of type "string"';
      {
        variant_name: converted,
      }
    ),
    withVolumeSizeInGb(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volume_size_in_gb" expected to be of type "number"';
      {
        volume_size_in_gb: converted,
      }
    ),
    core_dump_config:: {
      local block = self,
      new(destinationS3Uri, kmsKeyId):: (
        {}
        + block.withDestinationS3Uri(destinationS3Uri)
        + block.withKmsKeyId(kmsKeyId)
      ),
      withDestinationS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_s3_uri" expected to be of type "string"';
        {
          destination_s3_uri: converted,
        }
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
    },
    managed_instance_scaling:: {
      local block = self,
      new():: (
        {}
      ),
      withMaxInstanceCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_instance_count" expected to be of type "number"';
        {
          max_instance_count: converted,
        }
      ),
      withMinInstanceCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_instance_count" expected to be of type "number"';
        {
          min_instance_count: converted,
        }
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    routing_config:: {
      local block = self,
      new(routingStrategy):: (
        {}
        + block.withRoutingStrategy(routingStrategy)
      ),
      withRoutingStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"routing_strategy" expected to be of type "string"';
        {
          routing_strategy: converted,
        }
      ),
    },
    serverless_config:: {
      local block = self,
      new(maxConcurrency, memorySizeInMb):: (
        {}
        + block.withMaxConcurrency(maxConcurrency)
        + block.withMemorySizeInMb(memorySizeInMb)
      ),
      withMaxConcurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_concurrency" expected to be of type "number"';
        {
          max_concurrency: converted,
        }
      ),
      withMemorySizeInMb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory_size_in_mb" expected to be of type "number"';
        {
          memory_size_in_mb: converted,
        }
      ),
      withProvisionedConcurrency(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"provisioned_concurrency" expected to be of type "number"';
        {
          provisioned_concurrency: converted,
        }
      ),
    },
    withCoreDumpConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config: value,
      }
    ),
    withManagedInstanceScaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling: value,
      }
    ),
    withRoutingConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config: value,
      }
    ),
    withServerlessConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config: value,
      }
    ),
    withCoreDumpConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        core_dump_config+: converted,
      }
    ),
    withManagedInstanceScalingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_instance_scaling+: converted,
      }
    ),
    withRoutingConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        routing_config+: converted,
      }
    ),
    withServerlessConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        serverless_config+: converted,
      }
    ),
  },
  withAsyncInferenceConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      async_inference_config: value,
    }
  ),
  withDataCaptureConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_capture_config: value,
    }
  ),
  withProductionVariants(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      production_variants: value,
    }
  ),
  withShadowProductionVariants(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shadow_production_variants: value,
    }
  ),
  withAsyncInferenceConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      async_inference_config+: converted,
    }
  ),
  withDataCaptureConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_capture_config+: converted,
    }
  ),
  withProductionVariantsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      production_variants+: converted,
    }
  ),
  withShadowProductionVariantsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shadow_production_variants+: converted,
    }
  ),
}

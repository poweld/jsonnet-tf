{
  local block = self,
  new(terraformName, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_data_quality_job_definition",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withRoleArn(roleArn)
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  data_quality_app_specification:: {
    local block = self,
    new(imageUri):: (
      {}
      + block.withImageUri(imageUri)
    ),
    withEnvironment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    withImageUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_uri" expected to be of type "string"';
      {
        image_uri: converted,
      }
    ),
    withPostAnalyticsProcessorSourceUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_analytics_processor_source_uri" expected to be of type "string"';
      {
        post_analytics_processor_source_uri: converted,
      }
    ),
    withRecordPreprocessorSourceUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"record_preprocessor_source_uri" expected to be of type "string"';
      {
        record_preprocessor_source_uri: converted,
      }
    ),
  },
  data_quality_baseline_config:: {
    local block = self,
    new():: (
      {}
    ),
    constraints_resource:: {
      local block = self,
      new():: (
        {}
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    statistics_resource:: {
      local block = self,
      new():: (
        {}
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    withConstraintsResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        constraints_resource: value,
      }
    ),
    withStatisticsResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        statistics_resource: value,
      }
    ),
    withConstraintsResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        constraints_resource+: converted,
      }
    ),
    withStatisticsResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        statistics_resource+: converted,
      }
    ),
  },
  data_quality_job_input:: {
    local block = self,
    new():: (
      {}
    ),
    batch_transform_input:: {
      local block = self,
      new(dataCapturedDestinationS3Uri):: (
        {}
        + block.withDataCapturedDestinationS3Uri(dataCapturedDestinationS3Uri)
      ),
      withDataCapturedDestinationS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_captured_destination_s3_uri" expected to be of type "string"';
        {
          data_captured_destination_s3_uri: converted,
        }
      ),
      withLocalPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"local_path" expected to be of type "string"';
        {
          local_path: converted,
        }
      ),
      withS3DataDistributionType(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_data_distribution_type" expected to be of type "string"';
        {
          s3_data_distribution_type: converted,
        }
      ),
      withS3InputMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_input_mode" expected to be of type "string"';
        {
          s3_input_mode: converted,
        }
      ),
      dataset_format:: {
        local block = self,
        new():: (
          {}
        ),
        csv:: {
          local block = self,
          new():: (
            {}
          ),
          withHeader(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"header" expected to be of type "bool"';
            {
              header: converted,
            }
          ),
        },
        json:: {
          local block = self,
          new():: (
            {}
          ),
          withLine(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"line" expected to be of type "bool"';
            {
              line: converted,
            }
          ),
        },
        withCsv(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            csv: value,
          }
        ),
        withJson(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            json: value,
          }
        ),
        withCsvMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            csv+: converted,
          }
        ),
        withJsonMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            json+: converted,
          }
        ),
      },
      withDatasetFormat(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dataset_format: value,
        }
      ),
      withDatasetFormatMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dataset_format+: converted,
        }
      ),
    },
    endpoint_input:: {
      local block = self,
      new(endpointName):: (
        {}
        + block.withEndpointName(endpointName)
      ),
      withEndpointName(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_name" expected to be of type "string"';
        {
          endpoint_name: converted,
        }
      ),
      withLocalPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"local_path" expected to be of type "string"';
        {
          local_path: converted,
        }
      ),
      withS3DataDistributionType(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_data_distribution_type" expected to be of type "string"';
        {
          s3_data_distribution_type: converted,
        }
      ),
      withS3InputMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_input_mode" expected to be of type "string"';
        {
          s3_input_mode: converted,
        }
      ),
    },
    withBatchTransformInput(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_transform_input: value,
      }
    ),
    withEndpointInput(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        endpoint_input: value,
      }
    ),
    withBatchTransformInputMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_transform_input+: converted,
      }
    ),
    withEndpointInputMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        endpoint_input+: converted,
      }
    ),
  },
  data_quality_job_output_config:: {
    local block = self,
    new():: (
      {}
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    monitoring_outputs:: {
      local block = self,
      new():: (
        {}
      ),
      s3_output:: {
        local block = self,
        new(s3Uri):: (
          {}
          + block.withS3Uri(s3Uri)
        ),
        withLocalPath(value):: (
          local converted = value;
          assert std.isString(converted) : '"local_path" expected to be of type "string"';
          {
            local_path: converted,
          }
        ),
        withS3UploadMode(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_upload_mode" expected to be of type "string"';
          {
            s3_upload_mode: converted,
          }
        ),
        withS3Uri(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
          {
            s3_uri: converted,
          }
        ),
      },
      withS3Output(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_output: value,
        }
      ),
      withS3OutputMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_output+: converted,
        }
      ),
    },
    withMonitoringOutputs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monitoring_outputs: value,
      }
    ),
    withMonitoringOutputsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monitoring_outputs+: converted,
      }
    ),
  },
  job_resources:: {
    local block = self,
    new():: (
      {}
    ),
    cluster_config:: {
      local block = self,
      new(instanceCount, instanceType, volumeSizeInGb):: (
        {}
        + block.withInstanceCount(instanceCount)
        + block.withInstanceType(instanceType)
        + block.withVolumeSizeInGb(volumeSizeInGb)
      ),
      withInstanceCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
        {
          instance_count: converted,
        }
      ),
      withInstanceType(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_type" expected to be of type "string"';
        {
          instance_type: converted,
        }
      ),
      withVolumeKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_kms_key_id" expected to be of type "string"';
        {
          volume_kms_key_id: converted,
        }
      ),
      withVolumeSizeInGb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_size_in_gb" expected to be of type "number"';
        {
          volume_size_in_gb: converted,
        }
      ),
    },
    withClusterConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cluster_config: value,
      }
    ),
    withClusterConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cluster_config+: converted,
      }
    ),
  },
  network_config:: {
    local block = self,
    new():: (
      {}
    ),
    withEnableInterContainerTrafficEncryption(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_inter_container_traffic_encryption" expected to be of type "bool"';
      {
        enable_inter_container_traffic_encryption: converted,
      }
    ),
    withEnableNetworkIsolation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_network_isolation" expected to be of type "bool"';
      {
        enable_network_isolation: converted,
      }
    ),
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
    withVpcConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    withVpcConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  stopping_condition:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxRuntimeInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_runtime_in_seconds" expected to be of type "number"';
      {
        max_runtime_in_seconds: converted,
      }
    ),
  },
  withDataQualityAppSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_app_specification: value,
    }
  ),
  withDataQualityBaselineConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_baseline_config: value,
    }
  ),
  withDataQualityJobInput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_input: value,
    }
  ),
  withDataQualityJobOutputConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_output_config: value,
    }
  ),
  withJobResources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_resources: value,
    }
  ),
  withNetworkConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_config: value,
    }
  ),
  withStoppingCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stopping_condition: value,
    }
  ),
  withDataQualityAppSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_app_specification+: converted,
    }
  ),
  withDataQualityBaselineConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_baseline_config+: converted,
    }
  ),
  withDataQualityJobInputMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_input+: converted,
    }
  ),
  withDataQualityJobOutputConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_quality_job_output_config+: converted,
    }
  ),
  withJobResourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_resources+: converted,
    }
  ),
  withNetworkConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_config+: converted,
    }
  ),
  withStoppingConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stopping_condition+: converted,
    }
  ),
}

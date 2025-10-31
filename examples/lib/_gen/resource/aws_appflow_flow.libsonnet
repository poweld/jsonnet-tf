{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appflow_flow",
          type:: "resource",
          attributes:: ["arn", "description", "flow_status", "id", "kms_arn", "name", "region", "tags", "tags_all"],
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_arn" expected to be of type "string"';
    {
      kms_arn: converted,
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
  destination_flow_config:: {
    local block = self,
    new(connectorType):: (
      {}
      + block.withConnectorType(connectorType)
    ),
    withApiVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"api_version" expected to be of type "string"';
      {
        api_version: converted,
      }
    ),
    withConnectorProfileName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_profile_name" expected to be of type "string"';
      {
        connector_profile_name: converted,
      }
    ),
    withConnectorType(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_type" expected to be of type "string"';
      {
        connector_type: converted,
      }
    ),
    destination_connector_properties:: {
      local block = self,
      new():: (
        {}
      ),
      custom_connector:: {
        local block = self,
        new(entityName):: (
          {}
          + block.withEntityName(entityName)
        ),
        withCustomProperties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"custom_properties" expected to be of type "map"';
          {
            custom_properties: converted,
          }
        ),
        withEntityName(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_name" expected to be of type "string"';
          {
            entity_name: converted,
          }
        ),
        withIdFieldNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        withIdFieldNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        withWriteOperationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      customer_profiles:: {
        local block = self,
        new(domainName):: (
          {}
          + block.withDomainName(domainName)
        ),
        withDomainName(value):: (
          local converted = value;
          assert std.isString(converted) : '"domain_name" expected to be of type "string"';
          {
            domain_name: converted,
          }
        ),
        withObjectTypeName(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_type_name" expected to be of type "string"';
          {
            object_type_name: converted,
          }
        ),
      },
      event_bridge:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      honeycode:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      lookout_metrics:: {
        local block = self,
        new():: (
          {}
        ),
      },
      marketo:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      redshift:: {
        local block = self,
        new(intermediateBucketName, object):: (
          {}
          + block.withIntermediateBucketName(intermediateBucketName)
          + block.withObject(object)
        ),
        withBucketPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        withIntermediateBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"intermediate_bucket_name" expected to be of type "string"';
          {
            intermediate_bucket_name: converted,
          }
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      s3:: {
        local block = self,
        new(bucketName):: (
          {}
          + block.withBucketName(bucketName)
        ),
        withBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        withBucketPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        s3_output_format_config:: {
          local block = self,
          new():: (
            {}
          ),
          withFileType(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_type" expected to be of type "string"';
            {
              file_type: converted,
            }
          ),
          withPreserveSourceDataTyping(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"preserve_source_data_typing" expected to be of type "bool"';
            {
              preserve_source_data_typing: converted,
            }
          ),
          aggregation_config:: {
            local block = self,
            new():: (
              {}
            ),
            withAggregationType(value):: (
              local converted = value;
              assert std.isString(converted) : '"aggregation_type" expected to be of type "string"';
              {
                aggregation_type: converted,
              }
            ),
            withTargetFileSize(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"target_file_size" expected to be of type "number"';
              {
                target_file_size: converted,
              }
            ),
          },
          prefix_config:: {
            local block = self,
            new():: (
              {}
            ),
            withPrefixFormat(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_format" expected to be of type "string"';
              {
                prefix_format: converted,
              }
            ),
            withPrefixHierarchy(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy: converted,
              }
            ),
            withPrefixHierarchyMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy+: converted,
              }
            ),
            withPrefixType(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_type" expected to be of type "string"';
              {
                prefix_type: converted,
              }
            ),
          },
          withAggregationConfig(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config: value,
            }
          ),
          withPrefixConfig(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config: value,
            }
          ),
          withAggregationConfigMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config+: converted,
            }
          ),
          withPrefixConfigMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config+: converted,
            }
          ),
        },
        withS3OutputFormatConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config: value,
          }
        ),
        withS3OutputFormatConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config+: converted,
          }
        ),
      },
      salesforce:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withDataTransferApi(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_transfer_api" expected to be of type "string"';
          {
            data_transfer_api: converted,
          }
        ),
        withIdFieldNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        withIdFieldNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        withWriteOperationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new(objectPath):: (
          {}
          + block.withObjectPath(objectPath)
        ),
        withIdFieldNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        withIdFieldNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        withObjectPath(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_path" expected to be of type "string"';
          {
            object_path: converted,
          }
        ),
        withWriteOperationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        success_response_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withSuccessResponseHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
        withSuccessResponseHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            success_response_handling_config+: converted,
          }
        ),
      },
      snowflake:: {
        local block = self,
        new(intermediateBucketName, object):: (
          {}
          + block.withIntermediateBucketName(intermediateBucketName)
          + block.withObject(object)
        ),
        withBucketPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        withIntermediateBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"intermediate_bucket_name" expected to be of type "string"';
          {
            intermediate_bucket_name: converted,
          }
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      upsolver:: {
        local block = self,
        new(bucketName):: (
          {}
          + block.withBucketName(bucketName)
        ),
        withBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        withBucketPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        s3_output_format_config:: {
          local block = self,
          new():: (
            {}
          ),
          withFileType(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_type" expected to be of type "string"';
            {
              file_type: converted,
            }
          ),
          aggregation_config:: {
            local block = self,
            new():: (
              {}
            ),
            withAggregationType(value):: (
              local converted = value;
              assert std.isString(converted) : '"aggregation_type" expected to be of type "string"';
              {
                aggregation_type: converted,
              }
            ),
          },
          prefix_config:: {
            local block = self,
            new(prefixType):: (
              {}
              + block.withPrefixType(prefixType)
            ),
            withPrefixFormat(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_format" expected to be of type "string"';
              {
                prefix_format: converted,
              }
            ),
            withPrefixHierarchy(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy: converted,
              }
            ),
            withPrefixHierarchyMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"prefix_hierarchy" expected to be of type "list"';
              {
                prefix_hierarchy+: converted,
              }
            ),
            withPrefixType(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix_type" expected to be of type "string"';
              {
                prefix_type: converted,
              }
            ),
          },
          withAggregationConfig(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config: value,
            }
          ),
          withPrefixConfig(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config: value,
            }
          ),
          withAggregationConfigMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              aggregation_config+: converted,
            }
          ),
          withPrefixConfigMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix_config+: converted,
            }
          ),
        },
        withS3OutputFormatConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config: value,
          }
        ),
        withS3OutputFormatConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_output_format_config+: converted,
          }
        ),
      },
      zendesk:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withIdFieldNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names: converted,
          }
        ),
        withIdFieldNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"id_field_names" expected to be of type "list"';
          {
            id_field_names+: converted,
          }
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
        withWriteOperationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"write_operation_type" expected to be of type "string"';
          {
            write_operation_type: converted,
          }
        ),
        error_handling_config:: {
          local block = self,
          new():: (
            {}
          ),
          withBucketName(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
            {
              bucket_name: converted,
            }
          ),
          withBucketPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
            {
              bucket_prefix: converted,
            }
          ),
          withFailOnFirstDestinationError(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"fail_on_first_destination_error" expected to be of type "bool"';
            {
              fail_on_first_destination_error: converted,
            }
          ),
        },
        withErrorHandlingConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config: value,
          }
        ),
        withErrorHandlingConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            error_handling_config+: converted,
          }
        ),
      },
      withCustomConnector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector: value,
        }
      ),
      withCustomerProfiles(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customer_profiles: value,
        }
      ),
      withEventBridge(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          event_bridge: value,
        }
      ),
      withHoneycode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode: value,
        }
      ),
      withLookoutMetrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lookout_metrics: value,
        }
      ),
      withMarketo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo: value,
        }
      ),
      withRedshift(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift: value,
        }
      ),
      withS3(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3: value,
        }
      ),
      withSalesforce(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce: value,
        }
      ),
      withSapoData(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data: value,
        }
      ),
      withSnowflake(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake: value,
        }
      ),
      withUpsolver(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upsolver: value,
        }
      ),
      withZendesk(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk: value,
        }
      ),
      withCustomConnectorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector+: converted,
        }
      ),
      withCustomerProfilesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customer_profiles+: converted,
        }
      ),
      withEventBridgeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          event_bridge+: converted,
        }
      ),
      withHoneycodeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode+: converted,
        }
      ),
      withLookoutMetricsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lookout_metrics+: converted,
        }
      ),
      withMarketoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo+: converted,
        }
      ),
      withRedshiftMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift+: converted,
        }
      ),
      withS3Mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3+: converted,
        }
      ),
      withSalesforceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce+: converted,
        }
      ),
      withSapoDataMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data+: converted,
        }
      ),
      withSnowflakeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake+: converted,
        }
      ),
      withUpsolverMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upsolver+: converted,
        }
      ),
      withZendeskMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk+: converted,
        }
      ),
    },
    withDestinationConnectorProperties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_connector_properties: value,
      }
    ),
    withDestinationConnectorPropertiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_connector_properties+: converted,
      }
    ),
  },
  metadata_catalog_config:: {
    local block = self,
    new():: (
      {}
    ),
    glue_data_catalog:: {
      local block = self,
      new(databaseName, roleArn, tablePrefix):: (
        {}
        + block.withDatabaseName(databaseName)
        + block.withRoleArn(roleArn)
        + block.withTablePrefix(tablePrefix)
      ),
      withDatabaseName(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withTablePrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_prefix" expected to be of type "string"';
        {
          table_prefix: converted,
        }
      ),
    },
    withGlueDataCatalog(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        glue_data_catalog: value,
      }
    ),
    withGlueDataCatalogMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        glue_data_catalog+: converted,
      }
    ),
  },
  source_flow_config:: {
    local block = self,
    new(connectorType):: (
      {}
      + block.withConnectorType(connectorType)
    ),
    withApiVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"api_version" expected to be of type "string"';
      {
        api_version: converted,
      }
    ),
    withConnectorProfileName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_profile_name" expected to be of type "string"';
      {
        connector_profile_name: converted,
      }
    ),
    withConnectorType(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_type" expected to be of type "string"';
      {
        connector_type: converted,
      }
    ),
    incremental_pull_config:: {
      local block = self,
      new():: (
        {}
      ),
      withDatetimeTypeFieldName(value):: (
        local converted = value;
        assert std.isString(converted) : '"datetime_type_field_name" expected to be of type "string"';
        {
          datetime_type_field_name: converted,
        }
      ),
    },
    source_connector_properties:: {
      local block = self,
      new():: (
        {}
      ),
      amplitude:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      custom_connector:: {
        local block = self,
        new(entityName):: (
          {}
          + block.withEntityName(entityName)
        ),
        withCustomProperties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"custom_properties" expected to be of type "map"';
          {
            custom_properties: converted,
          }
        ),
        withEntityName(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_name" expected to be of type "string"';
          {
            entity_name: converted,
          }
        ),
      },
      datadog:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      dynatrace:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      google_analytics:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      infor_nexus:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      marketo:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      s3:: {
        local block = self,
        new(bucketName, bucketPrefix):: (
          {}
          + block.withBucketName(bucketName)
          + block.withBucketPrefix(bucketPrefix)
        ),
        withBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        withBucketPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        s3_input_format_config:: {
          local block = self,
          new():: (
            {}
          ),
          withS3InputFileType(value):: (
            local converted = value;
            assert std.isString(converted) : '"s3_input_file_type" expected to be of type "string"';
            {
              s3_input_file_type: converted,
            }
          ),
        },
        withS3InputFormatConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_input_format_config: value,
          }
        ),
        withS3InputFormatConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_input_format_config+: converted,
          }
        ),
      },
      salesforce:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withDataTransferApi(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_transfer_api" expected to be of type "string"';
          {
            data_transfer_api: converted,
          }
        ),
        withEnableDynamicFieldUpdate(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enable_dynamic_field_update" expected to be of type "bool"';
          {
            enable_dynamic_field_update: converted,
          }
        ),
        withIncludeDeletedRecords(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_deleted_records" expected to be of type "bool"';
          {
            include_deleted_records: converted,
          }
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new(objectPath):: (
          {}
          + block.withObjectPath(objectPath)
        ),
        withObjectPath(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_path" expected to be of type "string"';
          {
            object_path: converted,
          }
        ),
        pagination_config:: {
          local block = self,
          new(maxPageSize):: (
            {}
            + block.withMaxPageSize(maxPageSize)
          ),
          withMaxPageSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_page_size" expected to be of type "number"';
            {
              max_page_size: converted,
            }
          ),
        },
        parallelism_config:: {
          local block = self,
          new(maxPageSize):: (
            {}
            + block.withMaxPageSize(maxPageSize)
          ),
          withMaxPageSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_page_size" expected to be of type "number"';
            {
              max_page_size: converted,
            }
          ),
        },
        withPaginationConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pagination_config: value,
          }
        ),
        withParallelismConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parallelism_config: value,
          }
        ),
        withPaginationConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            pagination_config+: converted,
          }
        ),
        withParallelismConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parallelism_config+: converted,
          }
        ),
      },
      service_now:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      singular:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      slack:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      trendmicro:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      veeva:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withDocumentType(value):: (
          local converted = value;
          assert std.isString(converted) : '"document_type" expected to be of type "string"';
          {
            document_type: converted,
          }
        ),
        withIncludeAllVersions(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_all_versions" expected to be of type "bool"';
          {
            include_all_versions: converted,
          }
        ),
        withIncludeRenditions(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_renditions" expected to be of type "bool"';
          {
            include_renditions: converted,
          }
        ),
        withIncludeSourceFiles(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"include_source_files" expected to be of type "bool"';
          {
            include_source_files: converted,
          }
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      zendesk:: {
        local block = self,
        new(object):: (
          {}
          + block.withObject(object)
        ),
        withObject(value):: (
          local converted = value;
          assert std.isString(converted) : '"object" expected to be of type "string"';
          {
            object: converted,
          }
        ),
      },
      withAmplitude(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude: value,
        }
      ),
      withCustomConnector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector: value,
        }
      ),
      withDatadog(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog: value,
        }
      ),
      withDynatrace(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace: value,
        }
      ),
      withGoogleAnalytics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics: value,
        }
      ),
      withInforNexus(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus: value,
        }
      ),
      withMarketo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo: value,
        }
      ),
      withS3(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3: value,
        }
      ),
      withSalesforce(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce: value,
        }
      ),
      withSapoData(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data: value,
        }
      ),
      withServiceNow(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now: value,
        }
      ),
      withSingular(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular: value,
        }
      ),
      withSlack(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack: value,
        }
      ),
      withTrendmicro(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro: value,
        }
      ),
      withVeeva(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva: value,
        }
      ),
      withZendesk(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk: value,
        }
      ),
      withAmplitudeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude+: converted,
        }
      ),
      withCustomConnectorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector+: converted,
        }
      ),
      withDatadogMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog+: converted,
        }
      ),
      withDynatraceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace+: converted,
        }
      ),
      withGoogleAnalyticsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics+: converted,
        }
      ),
      withInforNexusMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus+: converted,
        }
      ),
      withMarketoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo+: converted,
        }
      ),
      withS3Mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3+: converted,
        }
      ),
      withSalesforceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce+: converted,
        }
      ),
      withSapoDataMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data+: converted,
        }
      ),
      withServiceNowMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now+: converted,
        }
      ),
      withSingularMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular+: converted,
        }
      ),
      withSlackMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack+: converted,
        }
      ),
      withTrendmicroMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro+: converted,
        }
      ),
      withVeevaMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva+: converted,
        }
      ),
      withZendeskMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk+: converted,
        }
      ),
    },
    withIncrementalPullConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        incremental_pull_config: value,
      }
    ),
    withSourceConnectorProperties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_connector_properties: value,
      }
    ),
    withIncrementalPullConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        incremental_pull_config+: converted,
      }
    ),
    withSourceConnectorPropertiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_connector_properties+: converted,
      }
    ),
  },
  task:: {
    local block = self,
    new(taskType):: (
      {}
      + block.withTaskType(taskType)
    ),
    withDestinationField(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_field" expected to be of type "string"';
      {
        destination_field: converted,
      }
    ),
    withSourceFields(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_fields" expected to be of type "list"';
      {
        source_fields: converted,
      }
    ),
    withSourceFieldsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_fields" expected to be of type "list"';
      {
        source_fields+: converted,
      }
    ),
    withTaskProperties(value):: (
      local converted = value;
      assert std.isObject(converted) : '"task_properties" expected to be of type "map"';
      {
        task_properties: converted,
      }
    ),
    withTaskType(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_type" expected to be of type "string"';
      {
        task_type: converted,
      }
    ),
    connector_operator:: {
      local block = self,
      new():: (
        {}
      ),
      withAmplitude(value):: (
        local converted = value;
        assert std.isString(converted) : '"amplitude" expected to be of type "string"';
        {
          amplitude: converted,
        }
      ),
      withCustomConnector(value):: (
        local converted = value;
        assert std.isString(converted) : '"custom_connector" expected to be of type "string"';
        {
          custom_connector: converted,
        }
      ),
      withDatadog(value):: (
        local converted = value;
        assert std.isString(converted) : '"datadog" expected to be of type "string"';
        {
          datadog: converted,
        }
      ),
      withDynatrace(value):: (
        local converted = value;
        assert std.isString(converted) : '"dynatrace" expected to be of type "string"';
        {
          dynatrace: converted,
        }
      ),
      withGoogleAnalytics(value):: (
        local converted = value;
        assert std.isString(converted) : '"google_analytics" expected to be of type "string"';
        {
          google_analytics: converted,
        }
      ),
      withInforNexus(value):: (
        local converted = value;
        assert std.isString(converted) : '"infor_nexus" expected to be of type "string"';
        {
          infor_nexus: converted,
        }
      ),
      withMarketo(value):: (
        local converted = value;
        assert std.isString(converted) : '"marketo" expected to be of type "string"';
        {
          marketo: converted,
        }
      ),
      withS3(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3" expected to be of type "string"';
        {
          s3: converted,
        }
      ),
      withSalesforce(value):: (
        local converted = value;
        assert std.isString(converted) : '"salesforce" expected to be of type "string"';
        {
          salesforce: converted,
        }
      ),
      withSapoData(value):: (
        local converted = value;
        assert std.isString(converted) : '"sapo_data" expected to be of type "string"';
        {
          sapo_data: converted,
        }
      ),
      withServiceNow(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_now" expected to be of type "string"';
        {
          service_now: converted,
        }
      ),
      withSingular(value):: (
        local converted = value;
        assert std.isString(converted) : '"singular" expected to be of type "string"';
        {
          singular: converted,
        }
      ),
      withSlack(value):: (
        local converted = value;
        assert std.isString(converted) : '"slack" expected to be of type "string"';
        {
          slack: converted,
        }
      ),
      withTrendmicro(value):: (
        local converted = value;
        assert std.isString(converted) : '"trendmicro" expected to be of type "string"';
        {
          trendmicro: converted,
        }
      ),
      withVeeva(value):: (
        local converted = value;
        assert std.isString(converted) : '"veeva" expected to be of type "string"';
        {
          veeva: converted,
        }
      ),
      withZendesk(value):: (
        local converted = value;
        assert std.isString(converted) : '"zendesk" expected to be of type "string"';
        {
          zendesk: converted,
        }
      ),
    },
    withConnectorOperator(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_operator: value,
      }
    ),
    withConnectorOperatorMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_operator+: converted,
      }
    ),
  },
  trigger_config:: {
    local block = self,
    new(triggerType):: (
      {}
      + block.withTriggerType(triggerType)
    ),
    withTriggerType(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_type" expected to be of type "string"';
      {
        trigger_type: converted,
      }
    ),
    trigger_properties:: {
      local block = self,
      new():: (
        {}
      ),
      scheduled:: {
        local block = self,
        new(scheduleExpression):: (
          {}
          + block.withScheduleExpression(scheduleExpression)
        ),
        withDataPullMode(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_pull_mode" expected to be of type "string"';
          {
            data_pull_mode: converted,
          }
        ),
        withFirstExecutionFrom(value):: (
          local converted = value;
          assert std.isString(converted) : '"first_execution_from" expected to be of type "string"';
          {
            first_execution_from: converted,
          }
        ),
        withScheduleEndTime(value):: (
          local converted = value;
          assert std.isString(converted) : '"schedule_end_time" expected to be of type "string"';
          {
            schedule_end_time: converted,
          }
        ),
        withScheduleExpression(value):: (
          local converted = value;
          assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
          {
            schedule_expression: converted,
          }
        ),
        withScheduleOffset(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"schedule_offset" expected to be of type "number"';
          {
            schedule_offset: converted,
          }
        ),
        withScheduleStartTime(value):: (
          local converted = value;
          assert std.isString(converted) : '"schedule_start_time" expected to be of type "string"';
          {
            schedule_start_time: converted,
          }
        ),
        withTimezone(value):: (
          local converted = value;
          assert std.isString(converted) : '"timezone" expected to be of type "string"';
          {
            timezone: converted,
          }
        ),
      },
      withScheduled(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scheduled: value,
        }
      ),
      withScheduledMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scheduled+: converted,
        }
      ),
    },
    withTriggerProperties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        trigger_properties: value,
      }
    ),
    withTriggerPropertiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        trigger_properties+: converted,
      }
    ),
  },
  withDestinationFlowConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_flow_config: value,
    }
  ),
  withMetadataCatalogConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_catalog_config: value,
    }
  ),
  withSourceFlowConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_flow_config: value,
    }
  ),
  withTask(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task: value,
    }
  ),
  withTriggerConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_config: value,
    }
  ),
  withDestinationFlowConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_flow_config+: converted,
    }
  ),
  withMetadataCatalogConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_catalog_config+: converted,
    }
  ),
  withSourceFlowConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_flow_config+: converted,
    }
  ),
  withTaskMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task+: converted,
    }
  ),
  withTriggerConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_config+: converted,
    }
  ),
}

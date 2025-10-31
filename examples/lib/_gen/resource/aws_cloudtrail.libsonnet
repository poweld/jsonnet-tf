{
  local block = self,
  new(terraformName, name, s3BucketName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudtrail",
          type:: "resource",
          attributes:: ["arn", "cloud_watch_logs_group_arn", "cloud_watch_logs_role_arn", "enable_log_file_validation", "enable_logging", "home_region", "id", "include_global_service_events", "is_multi_region_trail", "is_organization_trail", "kms_key_id", "name", "region", "s3_bucket_name", "s3_key_prefix", "sns_topic_arn", "sns_topic_name", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withS3BucketName(s3BucketName)
  ),
  withCloudWatchLogsGroupArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_watch_logs_group_arn" expected to be of type "string"';
    {
      cloud_watch_logs_group_arn: converted,
    }
  ),
  withCloudWatchLogsRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_watch_logs_role_arn" expected to be of type "string"';
    {
      cloud_watch_logs_role_arn: converted,
    }
  ),
  withEnableLogFileValidation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_log_file_validation" expected to be of type "bool"';
    {
      enable_log_file_validation: converted,
    }
  ),
  withEnableLogging(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_logging" expected to be of type "bool"';
    {
      enable_logging: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludeGlobalServiceEvents(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_global_service_events" expected to be of type "bool"';
    {
      include_global_service_events: converted,
    }
  ),
  withIsMultiRegionTrail(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_multi_region_trail" expected to be of type "bool"';
    {
      is_multi_region_trail: converted,
    }
  ),
  withIsOrganizationTrail(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_organization_trail" expected to be of type "bool"';
    {
      is_organization_trail: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  withS3BucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
    {
      s3_bucket_name: converted,
    }
  ),
  withS3KeyPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
    {
      s3_key_prefix: converted,
    }
  ),
  withSnsTopicName(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_name" expected to be of type "string"';
    {
      sns_topic_name: converted,
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
  advanced_event_selector:: {
    local block = self,
    new():: (
      {}
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    field_selector:: {
      local block = self,
      new(field):: (
        {}
        + block.withField(field)
      ),
      withEndsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with: converted,
        }
      ),
      withEndsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with+: converted,
        }
      ),
      withEquals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals: converted,
        }
      ),
      withEqualsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals+: converted,
        }
      ),
      withField(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      withNotEndsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with: converted,
        }
      ),
      withNotEndsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with+: converted,
        }
      ),
      withNotEquals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals: converted,
        }
      ),
      withNotEqualsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals+: converted,
        }
      ),
      withNotStartsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with: converted,
        }
      ),
      withNotStartsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with+: converted,
        }
      ),
      withStartsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with: converted,
        }
      ),
      withStartsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with+: converted,
        }
      ),
    },
    withFieldSelector(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector: value,
      }
    ),
    withFieldSelectorMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector+: converted,
      }
    ),
  },
  event_selector:: {
    local block = self,
    new():: (
      {}
    ),
    withExcludeManagementEventSources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_management_event_sources" expected to be of type "set"';
      {
        exclude_management_event_sources: converted,
      }
    ),
    withExcludeManagementEventSourcesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_management_event_sources" expected to be of type "set"';
      {
        exclude_management_event_sources+: converted,
      }
    ),
    withIncludeManagementEvents(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_management_events" expected to be of type "bool"';
      {
        include_management_events: converted,
      }
    ),
    withReadWriteType(value):: (
      local converted = value;
      assert std.isString(converted) : '"read_write_type" expected to be of type "string"';
      {
        read_write_type: converted,
      }
    ),
    data_resource:: {
      local block = self,
      new(type, values):: (
        {}
        + block.withType(type)
        + block.withValues(values)
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
    },
    withDataResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_resource: value,
      }
    ),
    withDataResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_resource+: converted,
      }
    ),
  },
  insight_selector:: {
    local block = self,
    new(insightType):: (
      {}
      + block.withInsightType(insightType)
    ),
    withInsightType(value):: (
      local converted = value;
      assert std.isString(converted) : '"insight_type" expected to be of type "string"';
      {
        insight_type: converted,
      }
    ),
  },
  withAdvancedEventSelector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector: value,
    }
  ),
  withEventSelector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_selector: value,
    }
  ),
  withInsightSelector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insight_selector: value,
    }
  ),
  withAdvancedEventSelectorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector+: converted,
    }
  ),
  withEventSelectorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_selector+: converted,
    }
  ),
  withInsightSelectorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insight_selector+: converted,
    }
  ),
}

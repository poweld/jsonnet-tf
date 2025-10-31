{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_association",
          type:: "resource",
          attributes:: ["apply_only_at_cron_interval", "arn", "association_id", "association_name", "automation_target_parameter_name", "compliance_severity", "document_version", "id", "max_concurrency", "max_errors", "name", "parameters", "region", "schedule_expression", "sync_compliance", "tags", "tags_all", "wait_for_success_timeout_seconds"],
        },
      },
    }
    + block.withName(name)
  ),
  withApplyOnlyAtCronInterval(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_only_at_cron_interval" expected to be of type "bool"';
    {
      apply_only_at_cron_interval: converted,
    }
  ),
  withAssociationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_name" expected to be of type "string"';
    {
      association_name: converted,
    }
  ),
  withAutomationTargetParameterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"automation_target_parameter_name" expected to be of type "string"';
    {
      automation_target_parameter_name: converted,
    }
  ),
  withComplianceSeverity(value):: (
    local converted = value;
    assert std.isString(converted) : '"compliance_severity" expected to be of type "string"';
    {
      compliance_severity: converted,
    }
  ),
  withDocumentVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_version" expected to be of type "string"';
    {
      document_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxConcurrency(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_concurrency" expected to be of type "string"';
    {
      max_concurrency: converted,
    }
  ),
  withMaxErrors(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_errors" expected to be of type "string"';
    {
      max_errors: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  withScheduleExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
    {
      schedule_expression: converted,
    }
  ),
  withSyncCompliance(value):: (
    local converted = value;
    assert std.isString(converted) : '"sync_compliance" expected to be of type "string"';
    {
      sync_compliance: converted,
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
  withWaitForSuccessTimeoutSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"wait_for_success_timeout_seconds" expected to be of type "number"';
    {
      wait_for_success_timeout_seconds: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  output_location:: {
    local block = self,
    new(s3BucketName):: (
      {}
      + block.withS3BucketName(s3BucketName)
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
    withS3Region(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_region" expected to be of type "string"';
      {
        s3_region: converted,
      }
    ),
  },
  targets:: {
    local block = self,
    new(key, values):: (
      {}
      + block.withKey(key)
      + block.withValues(values)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
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
  withOutputLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_location: value,
    }
  ),
  withTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets: value,
    }
  ),
  withOutputLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_location+: converted,
    }
  ),
  withTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets+: converted,
    }
  ),
}

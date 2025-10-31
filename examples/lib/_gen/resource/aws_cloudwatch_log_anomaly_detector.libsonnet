{
  local block = self,
  new(terraformName, enabled, logGroupArnList):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_anomaly_detector",
          type:: "resource",
          attributes:: ["anomaly_visibility_time", "arn", "detector_name", "enabled", "evaluation_frequency", "filter_pattern", "kms_key_id", "log_group_arn_list", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withEnabled(enabled)
    + block.withLogGroupArnList(logGroupArnList)
  ),
  withAnomalyVisibilityTime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"anomaly_visibility_time" expected to be of type "number"';
    {
      anomaly_visibility_time: converted,
    }
  ),
  withDetectorName(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_name" expected to be of type "string"';
    {
      detector_name: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withEvaluationFrequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"evaluation_frequency" expected to be of type "string"';
    {
      evaluation_frequency: converted,
    }
  ),
  withFilterPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_pattern" expected to be of type "string"';
    {
      filter_pattern: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withLogGroupArnList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_arn_list" expected to be of type "list"';
    {
      log_group_arn_list: converted,
    }
  ),
  withLogGroupArnListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_arn_list" expected to be of type "list"';
    {
      log_group_arn_list+: converted,
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
}

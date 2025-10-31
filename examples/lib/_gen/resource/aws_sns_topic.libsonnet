{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sns_topic",
          type:: "resource",
          attributes:: ["application_failure_feedback_role_arn", "application_success_feedback_role_arn", "application_success_feedback_sample_rate", "archive_policy", "arn", "beginning_archive_time", "content_based_deduplication", "delivery_policy", "display_name", "fifo_throughput_scope", "fifo_topic", "firehose_failure_feedback_role_arn", "firehose_success_feedback_role_arn", "firehose_success_feedback_sample_rate", "http_failure_feedback_role_arn", "http_success_feedback_role_arn", "http_success_feedback_sample_rate", "id", "kms_master_key_id", "lambda_failure_feedback_role_arn", "lambda_success_feedback_role_arn", "lambda_success_feedback_sample_rate", "name", "name_prefix", "owner", "policy", "region", "signature_version", "sqs_failure_feedback_role_arn", "sqs_success_feedback_role_arn", "sqs_success_feedback_sample_rate", "tags", "tags_all", "tracing_config"],
        },
      },
    }
  ),
  withApplicationFailureFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_failure_feedback_role_arn" expected to be of type "string"';
    {
      application_failure_feedback_role_arn: converted,
    }
  ),
  withApplicationSuccessFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_success_feedback_role_arn" expected to be of type "string"';
    {
      application_success_feedback_role_arn: converted,
    }
  ),
  withApplicationSuccessFeedbackSampleRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"application_success_feedback_sample_rate" expected to be of type "number"';
    {
      application_success_feedback_sample_rate: converted,
    }
  ),
  withArchivePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"archive_policy" expected to be of type "string"';
    {
      archive_policy: converted,
    }
  ),
  withContentBasedDeduplication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"content_based_deduplication" expected to be of type "bool"';
    {
      content_based_deduplication: converted,
    }
  ),
  withDeliveryPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_policy" expected to be of type "string"';
    {
      delivery_policy: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  withFifoThroughputScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"fifo_throughput_scope" expected to be of type "string"';
    {
      fifo_throughput_scope: converted,
    }
  ),
  withFifoTopic(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fifo_topic" expected to be of type "bool"';
    {
      fifo_topic: converted,
    }
  ),
  withFirehoseFailureFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firehose_failure_feedback_role_arn" expected to be of type "string"';
    {
      firehose_failure_feedback_role_arn: converted,
    }
  ),
  withFirehoseSuccessFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firehose_success_feedback_role_arn" expected to be of type "string"';
    {
      firehose_success_feedback_role_arn: converted,
    }
  ),
  withFirehoseSuccessFeedbackSampleRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"firehose_success_feedback_sample_rate" expected to be of type "number"';
    {
      firehose_success_feedback_sample_rate: converted,
    }
  ),
  withHttpFailureFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_failure_feedback_role_arn" expected to be of type "string"';
    {
      http_failure_feedback_role_arn: converted,
    }
  ),
  withHttpSuccessFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_success_feedback_role_arn" expected to be of type "string"';
    {
      http_success_feedback_role_arn: converted,
    }
  ),
  withHttpSuccessFeedbackSampleRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"http_success_feedback_sample_rate" expected to be of type "number"';
    {
      http_success_feedback_sample_rate: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsMasterKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
    {
      kms_master_key_id: converted,
    }
  ),
  withLambdaFailureFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lambda_failure_feedback_role_arn" expected to be of type "string"';
    {
      lambda_failure_feedback_role_arn: converted,
    }
  ),
  withLambdaSuccessFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lambda_success_feedback_role_arn" expected to be of type "string"';
    {
      lambda_success_feedback_role_arn: converted,
    }
  ),
  withLambdaSuccessFeedbackSampleRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"lambda_success_feedback_sample_rate" expected to be of type "number"';
    {
      lambda_success_feedback_sample_rate: converted,
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
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  withSignatureVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"signature_version" expected to be of type "number"';
    {
      signature_version: converted,
    }
  ),
  withSqsFailureFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sqs_failure_feedback_role_arn" expected to be of type "string"';
    {
      sqs_failure_feedback_role_arn: converted,
    }
  ),
  withSqsSuccessFeedbackRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sqs_success_feedback_role_arn" expected to be of type "string"';
    {
      sqs_success_feedback_role_arn: converted,
    }
  ),
  withSqsSuccessFeedbackSampleRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sqs_success_feedback_sample_rate" expected to be of type "number"';
    {
      sqs_success_feedback_sample_rate: converted,
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
  withTracingConfig(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracing_config" expected to be of type "string"';
    {
      tracing_config: converted,
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

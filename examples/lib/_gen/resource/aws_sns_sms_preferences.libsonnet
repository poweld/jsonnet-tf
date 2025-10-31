{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sns_sms_preferences",
          type:: "resource",
          attributes:: ["default_sender_id", "default_sms_type", "delivery_status_iam_role_arn", "delivery_status_success_sampling_rate", "id", "monthly_spend_limit", "region", "usage_report_s3_bucket"],
        },
      },
    }
  ),
  withDefaultSenderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_sender_id" expected to be of type "string"';
    {
      default_sender_id: converted,
    }
  ),
  withDefaultSmsType(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_sms_type" expected to be of type "string"';
    {
      default_sms_type: converted,
    }
  ),
  withDeliveryStatusIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_status_iam_role_arn" expected to be of type "string"';
    {
      delivery_status_iam_role_arn: converted,
    }
  ),
  withDeliveryStatusSuccessSamplingRate(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_status_success_sampling_rate" expected to be of type "string"';
    {
      delivery_status_success_sampling_rate: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMonthlySpendLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"monthly_spend_limit" expected to be of type "number"';
    {
      monthly_spend_limit: converted,
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
  withUsageReportS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_report_s3_bucket" expected to be of type "string"';
    {
      usage_report_s3_bucket: converted,
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

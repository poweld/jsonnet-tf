{
  local block = self,
  new(terraformName, eventSourceArn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_event_archive",
          type:: "resource",
          attributes:: ["arn", "description", "event_pattern", "event_source_arn", "id", "kms_key_identifier", "name", "region", "retention_days"],
        },
      },
    }
    + block.withEventSourceArn(eventSourceArn)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEventPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_pattern" expected to be of type "string"';
    {
      event_pattern: converted,
    }
  ),
  withEventSourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_source_arn" expected to be of type "string"';
    {
      event_source_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  withRetentionDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_days" expected to be of type "number"';
    {
      retention_days: converted,
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

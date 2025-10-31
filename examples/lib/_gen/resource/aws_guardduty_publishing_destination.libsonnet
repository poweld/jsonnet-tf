{
  local block = self,
  new(terraformName, destinationArn, detectorId, kmsKeyArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_guardduty_publishing_destination",
          type:: "resource",
          attributes:: ["destination_arn", "destination_type", "detector_id", "id", "kms_key_arn", "region"],
        },
      },
    }
    + block.withDestinationArn(destinationArn)
    + block.withDetectorId(detectorId)
    + block.withKmsKeyArn(kmsKeyArn)
  ),
  withDestinationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
    {
      destination_arn: converted,
    }
  ),
  withDestinationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_type" expected to be of type "string"';
    {
      destination_type: converted,
    }
  ),
  withDetectorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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

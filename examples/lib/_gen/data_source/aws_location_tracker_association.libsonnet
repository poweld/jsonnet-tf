{
  local block = self,
  new(terraformName, consumerArn, trackerName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_location_tracker_association",
          type:: "data",
          attributes:: ["consumer_arn", "id", "region", "tracker_name"],
        },
      },
    }
    + block.withConsumerArn(consumerArn)
    + block.withTrackerName(trackerName)
  ),
  withConsumerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"consumer_arn" expected to be of type "string"';
    {
      consumer_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTrackerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"tracker_name" expected to be of type "string"';
    {
      tracker_name: converted,
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

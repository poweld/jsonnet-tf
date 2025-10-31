{
  local block = self,
  new(terraformName, kinesisStreamArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_user_access_logging_settings",
          type:: "resource",
          attributes:: ["associated_portal_arns", "kinesis_stream_arn", "region", "tags", "tags_all", "user_access_logging_settings_arn"],
        },
      },
    }
    + block.withKinesisStreamArn(kinesisStreamArn)
  ),
  withKinesisStreamArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kinesis_stream_arn" expected to be of type "string"';
    {
      kinesis_stream_arn: converted,
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

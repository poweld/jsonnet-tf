{
  local block = self,
  new(terraformName, consumerIdentifier, dataShareArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_data_share_authorization",
          type:: "resource",
          attributes:: ["allow_writes", "consumer_identifier", "data_share_arn", "id", "managed_by", "producer_arn", "region"],
        },
      },
    }
    + block.withConsumerIdentifier(consumerIdentifier)
    + block.withDataShareArn(dataShareArn)
  ),
  withAllowWrites(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_writes" expected to be of type "bool"';
    {
      allow_writes: converted,
    }
  ),
  withConsumerIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"consumer_identifier" expected to be of type "string"';
    {
      consumer_identifier: converted,
    }
  ),
  withDataShareArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_share_arn" expected to be of type "string"';
    {
      data_share_arn: converted,
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

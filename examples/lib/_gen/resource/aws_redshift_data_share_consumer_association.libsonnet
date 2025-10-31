{
  local block = self,
  new(terraformName, dataShareArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_data_share_consumer_association",
          type:: "resource",
          attributes:: ["allow_writes", "associate_entire_account", "consumer_arn", "consumer_region", "data_share_arn", "id", "managed_by", "producer_arn", "region"],
        },
      },
    }
    + block.withDataShareArn(dataShareArn)
  ),
  withAllowWrites(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_writes" expected to be of type "bool"';
    {
      allow_writes: converted,
    }
  ),
  withAssociateEntireAccount(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"associate_entire_account" expected to be of type "bool"';
    {
      associate_entire_account: converted,
    }
  ),
  withConsumerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"consumer_arn" expected to be of type "string"';
    {
      consumer_arn: converted,
    }
  ),
  withConsumerRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"consumer_region" expected to be of type "string"';
    {
      consumer_region: converted,
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

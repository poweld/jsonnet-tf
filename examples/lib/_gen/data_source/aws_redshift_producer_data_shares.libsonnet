{
  local block = self,
  new(terraformName, producerArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_producer_data_shares",
          type:: "data",
          attributes:: ["data_shares", "id", "producer_arn", "region", "status"],
        },
      },
    }
    + block.withProducerArn(producerArn)
  ),
  withProducerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"producer_arn" expected to be of type "string"';
    {
      producer_arn: converted,
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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

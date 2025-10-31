{
  local block = self,
  new(terraformName, dataSetId, ingestionId, ingestionType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_ingestion",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "data_set_id", "id", "ingestion_id", "ingestion_status", "ingestion_type", "region"],
        },
      },
    }
    + block.withDataSetId(dataSetId)
    + block.withIngestionId(ingestionId)
    + block.withIngestionType(ingestionType)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withDataSetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
    }
  ),
  withIngestionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_id" expected to be of type "string"';
    {
      ingestion_id: converted,
    }
  ),
  withIngestionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_type" expected to be of type "string"';
    {
      ingestion_type: converted,
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

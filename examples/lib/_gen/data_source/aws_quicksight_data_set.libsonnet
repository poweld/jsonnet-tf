{
  local block = self,
  new(terraformName, dataSetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_data_set",
          type:: "data",
          attributes:: ["arn", "aws_account_id", "column_groups", "column_level_permission_rules", "data_set_id", "data_set_usage_configuration", "field_folders", "id", "import_mode", "logical_table_map", "name", "permissions", "physical_table_map", "region", "row_level_permission_data_set", "row_level_permission_tag_configuration", "tags"],
        },
      },
    }
    + block.withDataSetId(dataSetId)
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

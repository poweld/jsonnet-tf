{
  local block = self,
  new(terraformName, databaseName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_catalog_table",
          type:: "data",
          attributes:: ["arn", "catalog_id", "database_name", "description", "id", "name", "owner", "parameters", "partition_index", "partition_keys", "query_as_of_time", "region", "retention", "storage_descriptor", "table_type", "target_table", "transaction_id", "view_expanded_text", "view_original_text"],
        },
      },
    }
    + block.withDatabaseName(databaseName)
    + block.withName(name)
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withQueryAsOfTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_as_of_time" expected to be of type "string"';
    {
      query_as_of_time: converted,
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
  withTransactionId(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"transaction_id" expected to be of type "number"';
    {
      transaction_id: converted,
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

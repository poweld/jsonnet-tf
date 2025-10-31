{
  local block = self,
  new(terraformName, indexId, querySuggestionsBlockListId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_query_suggestions_block_list",
          type:: "data",
          attributes:: ["arn", "created_at", "description", "error_message", "file_size_bytes", "id", "index_id", "item_count", "name", "query_suggestions_block_list_id", "region", "role_arn", "source_s3_path", "status", "tags", "updated_at"],
        },
      },
    }
    + block.withIndexId(indexId)
    + block.withQuerySuggestionsBlockListId(querySuggestionsBlockListId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIndexId(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
    }
  ),
  withQuerySuggestionsBlockListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_suggestions_block_list_id" expected to be of type "string"';
    {
      query_suggestions_block_list_id: converted,
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

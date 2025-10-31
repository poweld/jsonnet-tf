{
  local block = self,
  new(terraformName, indexId, thesaurusId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_thesaurus",
          type:: "data",
          attributes:: ["arn", "created_at", "description", "error_message", "file_size_bytes", "id", "index_id", "name", "region", "role_arn", "source_s3_path", "status", "synonym_rule_count", "tags", "term_count", "thesaurus_id", "updated_at"],
        },
      },
    }
    + block.withIndexId(indexId)
    + block.withThesaurusId(thesaurusId)
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
  withThesaurusId(value):: (
    local converted = value;
    assert std.isString(converted) : '"thesaurus_id" expected to be of type "string"';
    {
      thesaurus_id: converted,
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

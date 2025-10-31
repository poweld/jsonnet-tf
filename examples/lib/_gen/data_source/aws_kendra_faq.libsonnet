{
  local block = self,
  new(terraformName, faqId, indexId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_faq",
          type:: "data",
          attributes:: ["arn", "created_at", "description", "error_message", "faq_id", "file_format", "id", "index_id", "language_code", "name", "region", "role_arn", "s3_path", "status", "tags", "updated_at"],
        },
      },
    }
    + block.withFaqId(faqId)
    + block.withIndexId(indexId)
  ),
  withFaqId(value):: (
    local converted = value;
    assert std.isString(converted) : '"faq_id" expected to be of type "string"';
    {
      faq_id: converted,
    }
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

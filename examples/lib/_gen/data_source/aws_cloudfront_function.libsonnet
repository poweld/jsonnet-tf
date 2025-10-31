{
  local block = self,
  new(terraformName, name, stage):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_function",
          type:: "data",
          attributes:: ["arn", "code", "comment", "etag", "id", "key_value_store_associations", "last_modified_time", "name", "runtime", "stage", "status"],
        },
      },
    }
    + block.withName(name)
    + block.withStage(stage)
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
  withStage(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage" expected to be of type "string"';
    {
      stage: converted,
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

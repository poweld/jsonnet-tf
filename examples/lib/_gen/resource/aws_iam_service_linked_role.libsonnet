{
  local block = self,
  new(terraformName, awsServiceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_service_linked_role",
          type:: "resource",
          attributes:: ["arn", "aws_service_name", "create_date", "custom_suffix", "description", "id", "name", "path", "tags", "tags_all", "unique_id"],
        },
      },
    }
    + block.withAwsServiceName(awsServiceName)
  ),
  withAwsServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_service_name" expected to be of type "string"';
    {
      aws_service_name: converted,
    }
  ),
  withCustomSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_suffix" expected to be of type "string"';
    {
      custom_suffix: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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

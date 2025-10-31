{
  local block = self,
  new(terraformName, kmsKey, name, sourceUri):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appintegrations_data_integration",
          type:: "resource",
          attributes:: ["arn", "description", "id", "kms_key", "name", "region", "source_uri", "tags", "tags_all"],
        },
      },
    }
    + block.withKmsKey(kmsKey)
    + block.withName(name)
    + block.withSourceUri(sourceUri)
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
  withKmsKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withSourceUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_uri" expected to be of type "string"';
    {
      source_uri: converted,
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
  schedule_config:: {
    local block = self,
    new(firstExecutionFrom, object, scheduleExpression):: (
      {}
      + block.withFirstExecutionFrom(firstExecutionFrom)
      + block.withObject(object)
      + block.withScheduleExpression(scheduleExpression)
    ),
    withFirstExecutionFrom(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_execution_from" expected to be of type "string"';
      {
        first_execution_from: converted,
      }
    ),
    withObject(value):: (
      local converted = value;
      assert std.isString(converted) : '"object" expected to be of type "string"';
      {
        object: converted,
      }
    ),
    withScheduleExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
      {
        schedule_expression: converted,
      }
    ),
  },
  withScheduleConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_config: value,
    }
  ),
  withScheduleConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_config+: converted,
    }
  ),
}

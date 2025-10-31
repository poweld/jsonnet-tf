{
  local block = self,
  new(terraformName, data, engineType, engineVersion, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_mq_configuration",
          type:: "resource",
          attributes:: ["arn", "authentication_strategy", "data", "description", "engine_type", "engine_version", "id", "latest_revision", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withData(data)
    + block.withEngineType(engineType)
    + block.withEngineVersion(engineVersion)
    + block.withName(name)
  ),
  withAuthenticationStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_strategy" expected to be of type "string"';
    {
      authentication_strategy: converted,
    }
  ),
  withData(value):: (
    local converted = value;
    assert std.isString(converted) : '"data" expected to be of type "string"';
    {
      data: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEngineType(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
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

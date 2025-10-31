{
  local block = self,
  new(terraformName, name, strategy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_placement_group",
          type:: "resource",
          attributes:: ["arn", "id", "name", "partition_count", "placement_group_id", "region", "spread_level", "strategy", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withStrategy(strategy)
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
  withPartitionCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"partition_count" expected to be of type "number"';
    {
      partition_count: converted,
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
  withSpreadLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"spread_level" expected to be of type "string"';
    {
      spread_level: converted,
    }
  ),
  withStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"strategy" expected to be of type "string"';
    {
      strategy: converted,
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

{
  local block = self,
  new(terraformName, eventbridgeBus, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appintegrations_event_integration",
          type:: "resource",
          attributes:: ["arn", "description", "eventbridge_bus", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withEventbridgeBus(eventbridgeBus)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEventbridgeBus(value):: (
    local converted = value;
    assert std.isString(converted) : '"eventbridge_bus" expected to be of type "string"';
    {
      eventbridge_bus: converted,
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
  event_filter:: {
    local block = self,
    new(source):: (
      {}
      + block.withSource(source)
    ),
    withSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
  },
  withEventFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_filter: value,
    }
  ),
  withEventFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_filter+: converted,
    }
  ),
}

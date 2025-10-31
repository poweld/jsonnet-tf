{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glacier_vault",
          type:: "resource",
          attributes:: ["access_policy", "arn", "id", "location", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withAccessPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_policy" expected to be of type "string"';
    {
      access_policy: converted,
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
  notification:: {
    local block = self,
    new(events, snsTopic):: (
      {}
      + block.withEvents(events)
      + block.withSnsTopic(snsTopic)
    ),
    withEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    withEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
    withSnsTopic(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_topic" expected to be of type "string"';
      {
        sns_topic: converted,
      }
    ),
  },
  withNotification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification: value,
    }
  ),
  withNotificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification+: converted,
    }
  ),
}

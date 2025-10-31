{
  local block = self,
  new(terraformName, detailType, eventTypeIds, name, resource):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codestarnotifications_notification_rule",
          type:: "resource",
          attributes:: ["arn", "detail_type", "event_type_ids", "id", "name", "region", "resource", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withDetailType(detailType)
    + block.withEventTypeIds(eventTypeIds)
    + block.withName(name)
    + block.withResource(resource)
  ),
  withDetailType(value):: (
    local converted = value;
    assert std.isString(converted) : '"detail_type" expected to be of type "string"';
    {
      detail_type: converted,
    }
  ),
  withEventTypeIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_type_ids" expected to be of type "set"';
    {
      event_type_ids: converted,
    }
  ),
  withEventTypeIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_type_ids" expected to be of type "set"';
    {
      event_type_ids+: converted,
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
  withResource(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource" expected to be of type "string"';
    {
      resource: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  target:: {
    local block = self,
    new(address):: (
      {}
      + block.withAddress(address)
    ),
    withAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"address" expected to be of type "string"';
      {
        address: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  withTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}

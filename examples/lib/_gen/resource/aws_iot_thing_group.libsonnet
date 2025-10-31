{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_thing_group",
          type:: "resource",
          attributes:: ["arn", "id", "metadata", "name", "parent_group_name", "region", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withName(name)
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
  withParentGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_group_name" expected to be of type "string"';
    {
      parent_group_name: converted,
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
  properties:: {
    local block = self,
    new():: (
      {}
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    attribute_payload:: {
      local block = self,
      new():: (
        {}
      ),
      withAttributes(value):: (
        local converted = value;
        assert std.isObject(converted) : '"attributes" expected to be of type "map"';
        {
          attributes: converted,
        }
      ),
    },
    withAttributePayload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute_payload: value,
      }
    ),
    withAttributePayloadMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute_payload+: converted,
      }
    ),
  },
  withProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      properties: value,
    }
  ),
  withPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      properties+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, name, projectArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devicefarm_device_pool",
          type:: "resource",
          attributes:: ["arn", "description", "id", "max_devices", "name", "project_arn", "region", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withProjectArn(projectArn)
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
  withMaxDevices(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_devices" expected to be of type "number"';
    {
      max_devices: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProjectArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_arn" expected to be of type "string"';
    {
      project_arn: converted,
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
  rule:: {
    local block = self,
    new():: (
      {}
    ),
    withAttribute(value):: (
      local converted = value;
      assert std.isString(converted) : '"attribute" expected to be of type "string"';
      {
        attribute: converted,
      }
    ),
    withOperator(value):: (
      local converted = value;
      assert std.isString(converted) : '"operator" expected to be of type "string"';
      {
        operator: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}

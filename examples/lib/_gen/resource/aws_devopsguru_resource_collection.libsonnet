{
  local block = self,
  new(terraformName, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devopsguru_resource_collection",
          type:: "resource",
          attributes:: ["id", "region", "type"],
        },
      },
    }
    + block.withType(type)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cloudformation:: {
    local block = self,
    new(stackNames):: (
      {}
      + block.withStackNames(stackNames)
    ),
    withStackNames(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"stack_names" expected to be of type "list"';
      {
        stack_names: converted,
      }
    ),
    withStackNamesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"stack_names" expected to be of type "list"';
      {
        stack_names+: converted,
      }
    ),
  },
  tags:: {
    local block = self,
    new(appBoundaryKey, tagValues):: (
      {}
      + block.withAppBoundaryKey(appBoundaryKey)
      + block.withTagValues(tagValues)
    ),
    withAppBoundaryKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"app_boundary_key" expected to be of type "string"';
      {
        app_boundary_key: converted,
      }
    ),
    withTagValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tag_values" expected to be of type "list"';
      {
        tag_values: converted,
      }
    ),
    withTagValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tag_values" expected to be of type "list"';
      {
        tag_values+: converted,
      }
    ),
  },
  withCloudformation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudformation: value,
    }
  ),
  withTags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tags: value,
    }
  ),
  withCloudformationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudformation+: converted,
    }
  ),
  withTagsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tags+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_resourceexplorer2_view",
          type:: "resource",
          attributes:: ["arn", "default_view", "id", "name", "region", "scope", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDefaultView(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_view" expected to be of type "bool"';
    {
      default_view: converted,
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
  withScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filters:: {
    local block = self,
    new(filterString):: (
      {}
      + block.withFilterString(filterString)
    ),
    withFilterString(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_string" expected to be of type "string"';
      {
        filter_string: converted,
      }
    ),
  },
  included_property:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  withFilters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  withIncludedProperty(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      included_property: value,
    }
  ),
  withFiltersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
  withIncludedPropertyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      included_property+: converted,
    }
  ),
}

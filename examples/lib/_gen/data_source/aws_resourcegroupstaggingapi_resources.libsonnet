{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_resourcegroupstaggingapi_resources",
          type:: "data",
          attributes:: ["exclude_compliant_resources", "id", "include_compliance_details", "region", "resource_arn_list", "resource_tag_mapping_list", "resource_type_filters"],
        },
      },
    }
  ),
  withExcludeCompliantResources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_compliant_resources" expected to be of type "bool"';
    {
      exclude_compliant_resources: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludeComplianceDetails(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_compliance_details" expected to be of type "bool"';
    {
      include_compliance_details: converted,
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
  withResourceArnList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arn_list" expected to be of type "set"';
    {
      resource_arn_list: converted,
    }
  ),
  withResourceArnListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arn_list" expected to be of type "set"';
    {
      resource_arn_list+: converted,
    }
  ),
  withResourceTypeFilters(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_filters" expected to be of type "set"';
    {
      resource_type_filters: converted,
    }
  ),
  withResourceTypeFiltersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_filters" expected to be of type "set"';
    {
      resource_type_filters+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  tag_filter:: {
    local block = self,
    new(key):: (
      {}
      + block.withKey(key)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  withTagFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_filter: value,
    }
  ),
  withTagFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_filter+: converted,
    }
  ),
}

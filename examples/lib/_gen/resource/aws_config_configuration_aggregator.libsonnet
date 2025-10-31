{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_configuration_aggregator",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all"],
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
  account_aggregation_source:: {
    local block = self,
    new(accountIds):: (
      {}
      + block.withAccountIds(accountIds)
    ),
    withAccountIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
      {
        account_ids: converted,
      }
    ),
    withAccountIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
      {
        account_ids+: converted,
      }
    ),
    withAllRegions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"all_regions" expected to be of type "bool"';
      {
        all_regions: converted,
      }
    ),
    withRegions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions: converted,
      }
    ),
    withRegionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions+: converted,
      }
    ),
  },
  organization_aggregation_source:: {
    local block = self,
    new(roleArn):: (
      {}
      + block.withRoleArn(roleArn)
    ),
    withAllRegions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"all_regions" expected to be of type "bool"';
      {
        all_regions: converted,
      }
    ),
    withRegions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions: converted,
      }
    ),
    withRegionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions+: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  withAccountAggregationSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_aggregation_source: value,
    }
  ),
  withOrganizationAggregationSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_aggregation_source: value,
    }
  ),
  withAccountAggregationSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_aggregation_source+: converted,
    }
  ),
  withOrganizationAggregationSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      organization_aggregation_source+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, scanType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_registry_scanning_configuration",
          type:: "resource",
          attributes:: ["id", "region", "registry_id", "scan_type"],
        },
      },
    }
    + block.withScanType(scanType)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withScanType(value):: (
    local converted = value;
    assert std.isString(converted) : '"scan_type" expected to be of type "string"';
    {
      scan_type: converted,
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
    new(scanFrequency):: (
      {}
      + block.withScanFrequency(scanFrequency)
    ),
    withScanFrequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"scan_frequency" expected to be of type "string"';
      {
        scan_frequency: converted,
      }
    ),
    repository_filter:: {
      local block = self,
      new(filter, filterType):: (
        {}
        + block.withFilter(filter)
        + block.withFilterType(filterType)
      ),
      withFilter(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter" expected to be of type "string"';
        {
          filter: converted,
        }
      ),
      withFilterType(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter_type" expected to be of type "string"';
        {
          filter_type: converted,
        }
      ),
    },
    withRepositoryFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        repository_filter: value,
      }
    ),
    withRepositoryFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        repository_filter+: converted,
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

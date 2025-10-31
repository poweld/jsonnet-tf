{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_replication_configuration",
          type:: "resource",
          attributes:: ["id", "region", "registry_id"],
        },
      },
    }
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  replication_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      destination:: {
        local block = self,
        new(region, registryId):: (
          {}
          + block.withRegion(region)
          + block.withRegistryId(registryId)
        ),
        withRegion(value):: (
          local converted = value;
          assert std.isString(converted) : '"region" expected to be of type "string"';
          {
            region: converted,
          }
        ),
        withRegistryId(value):: (
          local converted = value;
          assert std.isString(converted) : '"registry_id" expected to be of type "string"';
          {
            registry_id: converted,
          }
        ),
      },
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
      withDestination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination: value,
        }
      ),
      withRepositoryFilter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          repository_filter: value,
        }
      ),
      withDestinationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination+: converted,
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
  },
  withReplicationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration: value,
    }
  ),
  withReplicationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration+: converted,
    }
  ),
}

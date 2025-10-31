{
  local block = self,
  new(terraformName, scrapeConfiguration):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_prometheus_scraper",
          type:: "resource",
          attributes:: ["alias", "arn", "id", "region", "role_arn", "scrape_configuration", "tags", "tags_all"],
        },
      },
    }
    + block.withScrapeConfiguration(scrapeConfiguration)
  ),
  withAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
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
  withScrapeConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"scrape_configuration" expected to be of type "string"';
    {
      scrape_configuration: converted,
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
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    amp:: {
      local block = self,
      new(workspaceArn):: (
        {}
        + block.withWorkspaceArn(workspaceArn)
      ),
      withWorkspaceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"workspace_arn" expected to be of type "string"';
        {
          workspace_arn: converted,
        }
      ),
    },
    withAmp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amp: value,
      }
    ),
    withAmpMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amp+: converted,
      }
    ),
  },
  role_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withSourceRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_role_arn" expected to be of type "string"';
      {
        source_role_arn: converted,
      }
    ),
    withTargetRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_role_arn" expected to be of type "string"';
      {
        target_role_arn: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new():: (
      {}
    ),
    eks:: {
      local block = self,
      new(clusterArn, subnetIds):: (
        {}
        + block.withClusterArn(clusterArn)
        + block.withSubnetIds(subnetIds)
      ),
      withClusterArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
        {
          cluster_arn: converted,
        }
      ),
      withSecurityGroupIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids: converted,
        }
      ),
      withSecurityGroupIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids+: converted,
        }
      ),
      withSubnetIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids: converted,
        }
      ),
      withSubnetIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids+: converted,
        }
      ),
    },
    withEks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eks: value,
      }
    ),
    withEksMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eks+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  withRoleConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_configuration: value,
    }
  ),
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
  withRoleConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_configuration+: converted,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, engine):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_engine_version",
          type:: "data",
          attributes:: ["default_character_set", "default_only", "engine", "engine_description", "exportable_log_types", "has_major_target", "has_minor_target", "id", "include_all", "latest", "parameter_group_family", "preferred_major_targets", "preferred_upgrade_targets", "preferred_versions", "region", "status", "supported_character_sets", "supported_feature_names", "supported_modes", "supported_timezones", "supports_certificate_rotation_without_restart", "supports_global_databases", "supports_integrations", "supports_limitless_database", "supports_local_write_forwarding", "supports_log_exports_to_cloudwatch", "supports_parallel_query", "supports_read_replica", "valid_major_targets", "valid_minor_targets", "valid_upgrade_targets", "version", "version_actual", "version_description"],
        },
      },
    }
    + block.withEngine(engine)
  ),
  withDefaultOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_only" expected to be of type "bool"';
    {
      default_only: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withHasMajorTarget(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_major_target" expected to be of type "bool"';
    {
      has_major_target: converted,
    }
  ),
  withHasMinorTarget(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_minor_target" expected to be of type "bool"';
    {
      has_minor_target: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludeAll(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_all" expected to be of type "bool"';
    {
      include_all: converted,
    }
  ),
  withLatest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"latest" expected to be of type "bool"';
    {
      latest: converted,
    }
  ),
  withParameterGroupFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_family" expected to be of type "string"';
    {
      parameter_group_family: converted,
    }
  ),
  withPreferredMajorTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_major_targets" expected to be of type "list"';
    {
      preferred_major_targets: converted,
    }
  ),
  withPreferredMajorTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_major_targets" expected to be of type "list"';
    {
      preferred_major_targets+: converted,
    }
  ),
  withPreferredUpgradeTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_upgrade_targets" expected to be of type "list"';
    {
      preferred_upgrade_targets: converted,
    }
  ),
  withPreferredUpgradeTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_upgrade_targets" expected to be of type "list"';
    {
      preferred_upgrade_targets+: converted,
    }
  ),
  withPreferredVersions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_versions" expected to be of type "list"';
    {
      preferred_versions: converted,
    }
  ),
  withPreferredVersionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_versions" expected to be of type "list"';
    {
      preferred_versions+: converted,
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
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.withName(name)
      + block.withValues(values)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
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
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}

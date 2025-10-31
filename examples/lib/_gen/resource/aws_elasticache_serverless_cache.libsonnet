{
  local block = self,
  new(terraformName, engine, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_serverless_cache",
          type:: "resource",
          attributes:: ["arn", "create_time", "daily_snapshot_time", "description", "endpoint", "engine", "full_engine_version", "id", "kms_key_id", "major_engine_version", "name", "reader_endpoint", "region", "security_group_ids", "snapshot_arns_to_restore", "snapshot_retention_limit", "status", "subnet_ids", "tags", "tags_all", "user_group_id"],
        },
      },
    }
    + block.withEngine(engine)
    + block.withName(name)
  ),
  withDailySnapshotTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_snapshot_time" expected to be of type "string"';
    {
      daily_snapshot_time: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withMajorEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"major_engine_version" expected to be of type "string"';
    {
      major_engine_version: converted,
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
  withSnapshotArnsToRestore(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_arns_to_restore" expected to be of type "list"';
    {
      snapshot_arns_to_restore: converted,
    }
  ),
  withSnapshotArnsToRestoreMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_arns_to_restore" expected to be of type "list"';
    {
      snapshot_arns_to_restore+: converted,
    }
  ),
  withSnapshotRetentionLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"snapshot_retention_limit" expected to be of type "number"';
    {
      snapshot_retention_limit: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withUserGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_group_id" expected to be of type "string"';
    {
      user_group_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cache_usage_limits:: {
    local block = self,
    new():: (
      {}
    ),
    data_storage:: {
      local block = self,
      new(unit):: (
        {}
        + block.withUnit(unit)
      ),
      withMaximum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum" expected to be of type "number"';
        {
          maximum: converted,
        }
      ),
      withMinimum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum" expected to be of type "number"';
        {
          minimum: converted,
        }
      ),
      withUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
    },
    ecpu_per_second:: {
      local block = self,
      new():: (
        {}
      ),
      withMaximum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum" expected to be of type "number"';
        {
          maximum: converted,
        }
      ),
      withMinimum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum" expected to be of type "number"';
        {
          minimum: converted,
        }
      ),
    },
    withDataStorage(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_storage: value,
      }
    ),
    withEcpuPerSecond(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecpu_per_second: value,
      }
    ),
    withDataStorageMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_storage+: converted,
      }
    ),
    withEcpuPerSecondMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecpu_per_second+: converted,
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
  withCacheUsageLimits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_usage_limits: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCacheUsageLimitsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_usage_limits+: converted,
    }
  ),
}

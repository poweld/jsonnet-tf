{
  local block = self,
  new(terraformName, metaStoreManagerRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securitylake_data_lake",
          type:: "resource",
          attributes:: ["arn", "id", "meta_store_manager_role_arn", "region", "s3_bucket_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withMetaStoreManagerRoleArn(metaStoreManagerRoleArn)
  ),
  withMetaStoreManagerRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"meta_store_manager_role_arn" expected to be of type "string"';
    {
      meta_store_manager_role_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new(region):: (
      {}
      + block.withRegion(region)
    ),
    withEncryptionConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
      {
        encryption_configuration: converted,
      }
    ),
    withEncryptionConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"encryption_configuration" expected to be of type "list"';
      {
        encryption_configuration+: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    lifecycle_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      expiration:: {
        local block = self,
        new():: (
          {}
        ),
        withDays(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"days" expected to be of type "number"';
          {
            days: converted,
          }
        ),
      },
      transition:: {
        local block = self,
        new():: (
          {}
        ),
        withDays(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"days" expected to be of type "number"';
          {
            days: converted,
          }
        ),
        withStorageClass(value):: (
          local converted = value;
          assert std.isString(converted) : '"storage_class" expected to be of type "string"';
          {
            storage_class: converted,
          }
        ),
      },
      withExpiration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          expiration: value,
        }
      ),
      withTransition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transition: value,
        }
      ),
      withExpirationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          expiration+: converted,
        }
      ),
      withTransitionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          transition+: converted,
        }
      ),
    },
    replication_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withRegions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions: converted,
        }
      ),
      withRegionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
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
    withLifecycleConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle_configuration: value,
      }
    ),
    withReplicationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        replication_configuration: value,
      }
    ),
    withLifecycleConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle_configuration+: converted,
      }
    ),
    withReplicationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        replication_configuration+: converted,
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
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}

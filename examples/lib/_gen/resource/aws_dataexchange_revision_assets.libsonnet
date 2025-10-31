{
  local block = self,
  new(terraformName, dataSetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dataexchange_revision_assets",
          type:: "resource",
          attributes:: ["arn", "comment", "created_at", "data_set_id", "finalized", "force_destroy", "id", "region", "tags", "tags_all", "updated_at"],
        },
      },
    }
    + block.withDataSetId(dataSetId)
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withDataSetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
    }
  ),
  withFinalized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"finalized" expected to be of type "bool"';
    {
      finalized: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
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
  asset:: {
    local block = self,
    new():: (
      {}
    ),
    create_s3_data_access_from_s3_bucket:: {
      local block = self,
      new():: (
        {}
      ),
      asset_source:: {
        local block = self,
        new(bucket):: (
          {}
          + block.withBucket(bucket)
        ),
        withBucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        withKeyPrefixes(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
          {
            key_prefixes: converted,
          }
        ),
        withKeyPrefixesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
          {
            key_prefixes+: converted,
          }
        ),
        withKeys(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
          {
            keys: converted,
          }
        ),
        withKeysMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
          {
            keys+: converted,
          }
        ),
        kms_keys_to_grant:: {
          local block = self,
          new(kmsKeyArn):: (
            {}
            + block.withKmsKeyArn(kmsKeyArn)
          ),
          withKmsKeyArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
            {
              kms_key_arn: converted,
            }
          ),
        },
        withKmsKeysToGrant(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kms_keys_to_grant: value,
          }
        ),
        withKmsKeysToGrantMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kms_keys_to_grant+: converted,
          }
        ),
      },
      withAssetSource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source: value,
        }
      ),
      withAssetSourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source+: converted,
        }
      ),
    },
    import_assets_from_s3:: {
      local block = self,
      new():: (
        {}
      ),
      asset_source:: {
        local block = self,
        new(bucket, key):: (
          {}
          + block.withBucket(bucket)
          + block.withKey(key)
        ),
        withBucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
      },
      withAssetSource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source: value,
        }
      ),
      withAssetSourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          asset_source+: converted,
        }
      ),
    },
    import_assets_from_signed_url:: {
      local block = self,
      new(filename):: (
        {}
        + block.withFilename(filename)
      ),
      withFilename(value):: (
        local converted = value;
        assert std.isString(converted) : '"filename" expected to be of type "string"';
        {
          filename: converted,
        }
      ),
    },
    withCreateS3DataAccessFromS3Bucket(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        create_s3_data_access_from_s3_bucket: value,
      }
    ),
    withImportAssetsFromS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_s3: value,
      }
    ),
    withImportAssetsFromSignedUrl(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_signed_url: value,
      }
    ),
    withCreateS3DataAccessFromS3BucketMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        create_s3_data_access_from_s3_bucket+: converted,
      }
    ),
    withImportAssetsFromS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_s3+: converted,
      }
    ),
    withImportAssetsFromSignedUrlMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        import_assets_from_signed_url+: converted,
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
  },
  withAsset(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      asset: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAssetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      asset+: converted,
    }
  ),
}

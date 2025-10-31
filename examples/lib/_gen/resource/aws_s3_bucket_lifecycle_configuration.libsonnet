{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_lifecycle_configuration",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "region", "transition_default_minimum_object_size"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
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
  withTransitionDefaultMinimumObjectSize(value):: (
    local converted = value;
    assert std.isString(converted) : '"transition_default_minimum_object_size" expected to be of type "string"';
    {
      transition_default_minimum_object_size: converted,
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
    new(id, status):: (
      {}
      + block.withId(id)
      + block.withStatus(status)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    abort_incomplete_multipart_upload:: {
      local block = self,
      new():: (
        {}
      ),
      withDaysAfterInitiation(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days_after_initiation" expected to be of type "number"';
        {
          days_after_initiation: converted,
        }
      ),
    },
    expiration:: {
      local block = self,
      new():: (
        {}
      ),
      withDate(value):: (
        local converted = value;
        assert std.isString(converted) : '"date" expected to be of type "string"';
        {
          date: converted,
        }
      ),
      withDays(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"days" expected to be of type "number"';
        {
          days: converted,
        }
      ),
      withExpiredObjectDeleteMarker(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"expired_object_delete_marker" expected to be of type "bool"';
        {
          expired_object_delete_marker: converted,
        }
      ),
    },
    filter:: {
      local block = self,
      new():: (
        {}
      ),
      withObjectSizeGreaterThan(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"object_size_greater_than" expected to be of type "number"';
        {
          object_size_greater_than: converted,
        }
      ),
      withObjectSizeLessThan(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"object_size_less_than" expected to be of type "number"';
        {
          object_size_less_than: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      and:: {
        local block = self,
        new():: (
          {}
        ),
        withObjectSizeGreaterThan(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"object_size_greater_than" expected to be of type "number"';
          {
            object_size_greater_than: converted,
          }
        ),
        withObjectSizeLessThan(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"object_size_less_than" expected to be of type "number"';
          {
            object_size_less_than: converted,
          }
        ),
        withPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        withTags(value):: (
          local converted = value;
          assert std.isObject(converted) : '"tags" expected to be of type "map"';
          {
            tags: converted,
          }
        ),
      },
      tag:: {
        local block = self,
        new(key, value):: (
          {}
          + block.withKey(key)
          + block.withValue(value)
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      withAnd(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          and: value,
        }
      ),
      withTag(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag: value,
        }
      ),
      withAndMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          and+: converted,
        }
      ),
      withTagMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag+: converted,
        }
      ),
    },
    noncurrent_version_expiration:: {
      local block = self,
      new(noncurrentDays):: (
        {}
        + block.withNoncurrentDays(noncurrentDays)
      ),
      withNewerNoncurrentVersions(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"newer_noncurrent_versions" expected to be of type "number"';
        {
          newer_noncurrent_versions: converted,
        }
      ),
      withNoncurrentDays(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"noncurrent_days" expected to be of type "number"';
        {
          noncurrent_days: converted,
        }
      ),
    },
    noncurrent_version_transition:: {
      local block = self,
      new(noncurrentDays, storageClass):: (
        {}
        + block.withNoncurrentDays(noncurrentDays)
        + block.withStorageClass(storageClass)
      ),
      withNewerNoncurrentVersions(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"newer_noncurrent_versions" expected to be of type "number"';
        {
          newer_noncurrent_versions: converted,
        }
      ),
      withNoncurrentDays(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"noncurrent_days" expected to be of type "number"';
        {
          noncurrent_days: converted,
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
    transition:: {
      local block = self,
      new(storageClass):: (
        {}
        + block.withStorageClass(storageClass)
      ),
      withDate(value):: (
        local converted = value;
        assert std.isString(converted) : '"date" expected to be of type "string"';
        {
          date: converted,
        }
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
    withAbortIncompleteMultipartUpload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        abort_incomplete_multipart_upload: value,
      }
    ),
    withExpiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration: value,
      }
    ),
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withNoncurrentVersionExpiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_expiration: value,
      }
    ),
    withNoncurrentVersionTransition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_transition: value,
      }
    ),
    withTransition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transition: value,
      }
    ),
    withAbortIncompleteMultipartUploadMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        abort_incomplete_multipart_upload+: converted,
      }
    ),
    withExpirationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration+: converted,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
    withNoncurrentVersionExpirationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_expiration+: converted,
      }
    ),
    withNoncurrentVersionTransitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        noncurrent_version_transition+: converted,
      }
    ),
    withTransitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transition+: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}

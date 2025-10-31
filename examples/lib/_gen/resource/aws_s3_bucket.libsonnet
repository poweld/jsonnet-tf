{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket",
          type:: "resource",
          attributes:: ["acceleration_status", "acl", "arn", "bucket", "bucket_domain_name", "bucket_prefix", "bucket_region", "bucket_regional_domain_name", "force_destroy", "hosted_zone_id", "id", "object_lock_enabled", "policy", "region", "request_payer", "tags", "tags_all", "website_domain", "website_endpoint"],
        },
      },
    }
  ),
  withAccelerationStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"acceleration_status" expected to be of type "string"';
    {
      acceleration_status: converted,
    }
  ),
  withAcl(value):: (
    local converted = value;
    assert std.isString(converted) : '"acl" expected to be of type "string"';
    {
      acl: converted,
    }
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withBucketPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
    {
      bucket_prefix: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withObjectLockEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"object_lock_enabled" expected to be of type "bool"';
    {
      object_lock_enabled: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  withRequestPayer(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_payer" expected to be of type "string"';
    {
      request_payer: converted,
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
  cors_rule:: {
    local block = self,
    new(allowedMethods, allowedOrigins):: (
      {}
      + block.withAllowedMethods(allowedMethods)
      + block.withAllowedOrigins(allowedOrigins)
    ),
    withAllowedHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_headers" expected to be of type "list"';
      {
        allowed_headers: converted,
      }
    ),
    withAllowedHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_headers" expected to be of type "list"';
      {
        allowed_headers+: converted,
      }
    ),
    withAllowedMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_methods" expected to be of type "list"';
      {
        allowed_methods: converted,
      }
    ),
    withAllowedMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_methods" expected to be of type "list"';
      {
        allowed_methods+: converted,
      }
    ),
    withAllowedOrigins(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_origins" expected to be of type "list"';
      {
        allowed_origins: converted,
      }
    ),
    withAllowedOriginsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"allowed_origins" expected to be of type "list"';
      {
        allowed_origins+: converted,
      }
    ),
    withExposeHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"expose_headers" expected to be of type "list"';
      {
        expose_headers: converted,
      }
    ),
    withExposeHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"expose_headers" expected to be of type "list"';
      {
        expose_headers+: converted,
      }
    ),
    withMaxAgeSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age_seconds" expected to be of type "number"';
      {
        max_age_seconds: converted,
      }
    ),
  },
  grant:: {
    local block = self,
    new(permissions, type):: (
      {}
      + block.withPermissions(permissions)
      + block.withType(type)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withPermissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions: converted,
      }
    ),
    withPermissionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"permissions" expected to be of type "set"';
      {
        permissions+: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  lifecycle_rule:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withAbortIncompleteMultipartUploadDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"abort_incomplete_multipart_upload_days" expected to be of type "number"';
      {
        abort_incomplete_multipart_upload_days: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
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
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
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
    noncurrent_version_expiration:: {
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
    noncurrent_version_transition:: {
      local block = self,
      new(storageClass):: (
        {}
        + block.withStorageClass(storageClass)
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
    withExpiration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration: value,
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
    withExpirationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expiration+: converted,
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
  logging:: {
    local block = self,
    new(targetBucket):: (
      {}
      + block.withTargetBucket(targetBucket)
    ),
    withTargetBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_bucket" expected to be of type "string"';
      {
        target_bucket: converted,
      }
    ),
    withTargetPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_prefix" expected to be of type "string"';
      {
        target_prefix: converted,
      }
    ),
  },
  object_lock_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withObjectLockEnabled(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_lock_enabled" expected to be of type "string"';
      {
        object_lock_enabled: converted,
      }
    ),
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      default_retention:: {
        local block = self,
        new(mode):: (
          {}
          + block.withMode(mode)
        ),
        withDays(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"days" expected to be of type "number"';
          {
            days: converted,
          }
        ),
        withMode(value):: (
          local converted = value;
          assert std.isString(converted) : '"mode" expected to be of type "string"';
          {
            mode: converted,
          }
        ),
        withYears(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"years" expected to be of type "number"';
          {
            years: converted,
          }
        ),
      },
      withDefaultRetention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention: value,
        }
      ),
      withDefaultRetentionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention+: converted,
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
  replication_configuration:: {
    local block = self,
    new(role):: (
      {}
      + block.withRole(role)
    ),
    withRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"role" expected to be of type "string"';
      {
        role: converted,
      }
    ),
    rules:: {
      local block = self,
      new(status):: (
        {}
        + block.withStatus(status)
      ),
      withDeleteMarkerReplicationStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"delete_marker_replication_status" expected to be of type "string"';
        {
          delete_marker_replication_status: converted,
        }
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
      withPriority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
      destination:: {
        local block = self,
        new(bucket):: (
          {}
          + block.withBucket(bucket)
        ),
        withAccountId(value):: (
          local converted = value;
          assert std.isString(converted) : '"account_id" expected to be of type "string"';
          {
            account_id: converted,
          }
        ),
        withBucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        withReplicaKmsKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"replica_kms_key_id" expected to be of type "string"';
          {
            replica_kms_key_id: converted,
          }
        ),
        withStorageClass(value):: (
          local converted = value;
          assert std.isString(converted) : '"storage_class" expected to be of type "string"';
          {
            storage_class: converted,
          }
        ),
        access_control_translation:: {
          local block = self,
          new(owner):: (
            {}
            + block.withOwner(owner)
          ),
          withOwner(value):: (
            local converted = value;
            assert std.isString(converted) : '"owner" expected to be of type "string"';
            {
              owner: converted,
            }
          ),
        },
        metrics:: {
          local block = self,
          new():: (
            {}
          ),
          withMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
            }
          ),
          withStatus(value):: (
            local converted = value;
            assert std.isString(converted) : '"status" expected to be of type "string"';
            {
              status: converted,
            }
          ),
        },
        replication_time:: {
          local block = self,
          new():: (
            {}
          ),
          withMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
            }
          ),
          withStatus(value):: (
            local converted = value;
            assert std.isString(converted) : '"status" expected to be of type "string"';
            {
              status: converted,
            }
          ),
        },
        withAccessControlTranslation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_control_translation: value,
          }
        ),
        withMetrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metrics: value,
          }
        ),
        withReplicationTime(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            replication_time: value,
          }
        ),
        withAccessControlTranslationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_control_translation+: converted,
          }
        ),
        withMetricsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metrics+: converted,
          }
        ),
        withReplicationTimeMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            replication_time+: converted,
          }
        ),
      },
      filter:: {
        local block = self,
        new():: (
          {}
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
      source_selection_criteria:: {
        local block = self,
        new():: (
          {}
        ),
        sse_kms_encrypted_objects:: {
          local block = self,
          new(enabled):: (
            {}
            + block.withEnabled(enabled)
          ),
          withEnabled(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
            {
              enabled: converted,
            }
          ),
        },
        withSseKmsEncryptedObjects(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms_encrypted_objects: value,
          }
        ),
        withSseKmsEncryptedObjectsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            sse_kms_encrypted_objects+: converted,
          }
        ),
      },
      withDestination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination: value,
        }
      ),
      withFilter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter: value,
        }
      ),
      withSourceSelectionCriteria(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_selection_criteria: value,
        }
      ),
      withDestinationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination+: converted,
        }
      ),
      withFilterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter+: converted,
        }
      ),
      withSourceSelectionCriteriaMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_selection_criteria+: converted,
        }
      ),
    },
    withRules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules: value,
      }
    ),
    withRulesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules+: converted,
      }
    ),
  },
  server_side_encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      withBucketKeyEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"bucket_key_enabled" expected to be of type "bool"';
        {
          bucket_key_enabled: converted,
        }
      ),
      apply_server_side_encryption_by_default:: {
        local block = self,
        new(sseAlgorithm):: (
          {}
          + block.withSseAlgorithm(sseAlgorithm)
        ),
        withKmsMasterKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
          {
            kms_master_key_id: converted,
          }
        ),
        withSseAlgorithm(value):: (
          local converted = value;
          assert std.isString(converted) : '"sse_algorithm" expected to be of type "string"';
          {
            sse_algorithm: converted,
          }
        ),
      },
      withApplyServerSideEncryptionByDefault(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          apply_server_side_encryption_by_default: value,
        }
      ),
      withApplyServerSideEncryptionByDefaultMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          apply_server_side_encryption_by_default+: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  versioning:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withMfaDelete(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"mfa_delete" expected to be of type "bool"';
      {
        mfa_delete: converted,
      }
    ),
  },
  website:: {
    local block = self,
    new():: (
      {}
    ),
    withErrorDocument(value):: (
      local converted = value;
      assert std.isString(converted) : '"error_document" expected to be of type "string"';
      {
        error_document: converted,
      }
    ),
    withIndexDocument(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_document" expected to be of type "string"';
      {
        index_document: converted,
      }
    ),
    withRedirectAllRequestsTo(value):: (
      local converted = value;
      assert std.isString(converted) : '"redirect_all_requests_to" expected to be of type "string"';
      {
        redirect_all_requests_to: converted,
      }
    ),
    withRoutingRules(value):: (
      local converted = value;
      assert std.isString(converted) : '"routing_rules" expected to be of type "string"';
      {
        routing_rules: converted,
      }
    ),
  },
  withCorsRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule: value,
    }
  ),
  withGrant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant: value,
    }
  ),
  withLifecycleRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lifecycle_rule: value,
    }
  ),
  withLogging(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging: value,
    }
  ),
  withObjectLockConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      object_lock_configuration: value,
    }
  ),
  withReplicationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration: value,
    }
  ),
  withServerSideEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVersioning(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning: value,
    }
  ),
  withWebsite(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      website: value,
    }
  ),
  withCorsRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule+: converted,
    }
  ),
  withGrantMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant+: converted,
    }
  ),
  withLifecycleRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lifecycle_rule+: converted,
    }
  ),
  withLoggingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging+: converted,
    }
  ),
  withObjectLockConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      object_lock_configuration+: converted,
    }
  ),
  withReplicationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_configuration+: converted,
    }
  ),
  withServerSideEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration+: converted,
    }
  ),
  withVersioningMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      versioning+: converted,
    }
  ),
  withWebsiteMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      website+: converted,
    }
  ),
}

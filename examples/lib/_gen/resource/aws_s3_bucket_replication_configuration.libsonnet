{
  local block = self,
  new(terraformName, bucket, role):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_replication_configuration",
          type:: "resource",
          attributes:: ["bucket", "id", "region", "role", "token"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withRole(role)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
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
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  withToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
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
    new(status):: (
      {}
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
    delete_marker_replication:: {
      local block = self,
      new(status):: (
        {}
        + block.withStatus(status)
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    destination:: {
      local block = self,
      new(bucket):: (
        {}
        + block.withBucket(bucket)
      ),
      withAccount(value):: (
        local converted = value;
        assert std.isString(converted) : '"account" expected to be of type "string"';
        {
          account: converted,
        }
      ),
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
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
      encryption_configuration:: {
        local block = self,
        new(replicaKmsKeyId):: (
          {}
          + block.withReplicaKmsKeyId(replicaKmsKeyId)
        ),
        withReplicaKmsKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"replica_kms_key_id" expected to be of type "string"';
          {
            replica_kms_key_id: converted,
          }
        ),
      },
      metrics:: {
        local block = self,
        new(status):: (
          {}
          + block.withStatus(status)
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
        event_threshold:: {
          local block = self,
          new(minutes):: (
            {}
            + block.withMinutes(minutes)
          ),
          withMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
            }
          ),
        },
        withEventThreshold(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            event_threshold: value,
          }
        ),
        withEventThresholdMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            event_threshold+: converted,
          }
        ),
      },
      replication_time:: {
        local block = self,
        new(status):: (
          {}
          + block.withStatus(status)
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
        time:: {
          local block = self,
          new(minutes):: (
            {}
            + block.withMinutes(minutes)
          ),
          withMinutes(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
            {
              minutes: converted,
            }
          ),
        },
        withTime(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            time: value,
          }
        ),
        withTimeMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            time+: converted,
          }
        ),
      },
      withAccessControlTranslation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_control_translation: value,
        }
      ),
      withEncryptionConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration: value,
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
      withEncryptionConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration+: converted,
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
    existing_object_replication:: {
      local block = self,
      new(status):: (
        {}
        + block.withStatus(status)
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
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
      and:: {
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
    source_selection_criteria:: {
      local block = self,
      new():: (
        {}
      ),
      replica_modifications:: {
        local block = self,
        new(status):: (
          {}
          + block.withStatus(status)
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      sse_kms_encrypted_objects:: {
        local block = self,
        new(status):: (
          {}
          + block.withStatus(status)
        ),
        withStatus(value):: (
          local converted = value;
          assert std.isString(converted) : '"status" expected to be of type "string"';
          {
            status: converted,
          }
        ),
      },
      withReplicaModifications(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          replica_modifications: value,
        }
      ),
      withSseKmsEncryptedObjects(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sse_kms_encrypted_objects: value,
        }
      ),
      withReplicaModificationsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          replica_modifications+: converted,
        }
      ),
      withSseKmsEncryptedObjectsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sse_kms_encrypted_objects+: converted,
        }
      ),
    },
    withDeleteMarkerReplication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_marker_replication: value,
      }
    ),
    withDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination: value,
      }
    ),
    withExistingObjectReplication(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        existing_object_replication: value,
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
    withDeleteMarkerReplicationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_marker_replication+: converted,
      }
    ),
    withDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination+: converted,
      }
    ),
    withExistingObjectReplicationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        existing_object_replication+: converted,
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

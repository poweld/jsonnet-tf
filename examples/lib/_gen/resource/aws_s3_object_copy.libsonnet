{
  local block = self,
  new(terraformName, bucket, key, source):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_object_copy",
          type:: "resource",
          attributes:: ["acl", "arn", "bucket", "bucket_key_enabled", "cache_control", "checksum_algorithm", "checksum_crc32", "checksum_crc32c", "checksum_crc64nvme", "checksum_sha1", "checksum_sha256", "content_disposition", "content_encoding", "content_language", "content_type", "copy_if_match", "copy_if_modified_since", "copy_if_none_match", "copy_if_unmodified_since", "customer_algorithm", "customer_key", "customer_key_md5", "etag", "expected_bucket_owner", "expected_source_bucket_owner", "expiration", "expires", "force_destroy", "id", "key", "kms_encryption_context", "kms_key_id", "last_modified", "metadata", "metadata_directive", "object_lock_legal_hold_status", "object_lock_mode", "object_lock_retain_until_date", "region", "request_charged", "request_payer", "server_side_encryption", "source", "source_customer_algorithm", "source_customer_key", "source_customer_key_md5", "source_version_id", "storage_class", "tagging_directive", "tags", "tags_all", "version_id", "website_redirect"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withKey(key)
    + block.withSource(source)
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
  withBucketKeyEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bucket_key_enabled" expected to be of type "bool"';
    {
      bucket_key_enabled: converted,
    }
  ),
  withCacheControl(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_control" expected to be of type "string"';
    {
      cache_control: converted,
    }
  ),
  withChecksumAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_algorithm" expected to be of type "string"';
    {
      checksum_algorithm: converted,
    }
  ),
  withContentDisposition(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_disposition" expected to be of type "string"';
    {
      content_disposition: converted,
    }
  ),
  withContentEncoding(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_encoding" expected to be of type "string"';
    {
      content_encoding: converted,
    }
  ),
  withContentLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_language" expected to be of type "string"';
    {
      content_language: converted,
    }
  ),
  withContentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_type" expected to be of type "string"';
    {
      content_type: converted,
    }
  ),
  withCopyIfMatch(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_match" expected to be of type "string"';
    {
      copy_if_match: converted,
    }
  ),
  withCopyIfModifiedSince(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_modified_since" expected to be of type "string"';
    {
      copy_if_modified_since: converted,
    }
  ),
  withCopyIfNoneMatch(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_none_match" expected to be of type "string"';
    {
      copy_if_none_match: converted,
    }
  ),
  withCopyIfUnmodifiedSince(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_if_unmodified_since" expected to be of type "string"';
    {
      copy_if_unmodified_since: converted,
    }
  ),
  withCustomerAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_algorithm" expected to be of type "string"';
    {
      customer_algorithm: converted,
    }
  ),
  withCustomerKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_key" expected to be of type "string"';
    {
      customer_key: converted,
    }
  ),
  withCustomerKeyMd5(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_key_md5" expected to be of type "string"';
    {
      customer_key_md5: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  withExpectedSourceBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_source_bucket_owner" expected to be of type "string"';
    {
      expected_source_bucket_owner: converted,
    }
  ),
  withExpires(value):: (
    local converted = value;
    assert std.isString(converted) : '"expires" expected to be of type "string"';
    {
      expires: converted,
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
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  withKmsEncryptionContext(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_encryption_context" expected to be of type "string"';
    {
      kms_encryption_context: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withMetadata(value):: (
    local converted = value;
    assert std.isObject(converted) : '"metadata" expected to be of type "map"';
    {
      metadata: converted,
    }
  ),
  withMetadataDirective(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata_directive" expected to be of type "string"';
    {
      metadata_directive: converted,
    }
  ),
  withObjectLockLegalHoldStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_legal_hold_status" expected to be of type "string"';
    {
      object_lock_legal_hold_status: converted,
    }
  ),
  withObjectLockMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_mode" expected to be of type "string"';
    {
      object_lock_mode: converted,
    }
  ),
  withObjectLockRetainUntilDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_lock_retain_until_date" expected to be of type "string"';
    {
      object_lock_retain_until_date: converted,
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
  withServerSideEncryption(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_side_encryption" expected to be of type "string"';
    {
      server_side_encryption: converted,
    }
  ),
  withSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
    }
  ),
  withSourceCustomerAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_customer_algorithm" expected to be of type "string"';
    {
      source_customer_algorithm: converted,
    }
  ),
  withSourceCustomerKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_customer_key" expected to be of type "string"';
    {
      source_customer_key: converted,
    }
  ),
  withSourceCustomerKeyMd5(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_customer_key_md5" expected to be of type "string"';
    {
      source_customer_key_md5: converted,
    }
  ),
  withStorageClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_class" expected to be of type "string"';
    {
      storage_class: converted,
    }
  ),
  withTaggingDirective(value):: (
    local converted = value;
    assert std.isString(converted) : '"tagging_directive" expected to be of type "string"';
    {
      tagging_directive: converted,
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
  withWebsiteRedirect(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_redirect" expected to be of type "string"';
    {
      website_redirect: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  grant:: {
    local block = self,
    new(permissions, type):: (
      {}
      + block.withPermissions(permissions)
      + block.withType(type)
    ),
    withEmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
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
  override_provider:: {
    local block = self,
    new():: (
      {}
    ),
    default_tags:: {
      local block = self,
      new():: (
        {}
      ),
      withTags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags" expected to be of type "map"';
        {
          tags: converted,
        }
      ),
    },
    withDefaultTags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_tags: value,
      }
    ),
    withDefaultTagsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_tags+: converted,
      }
    ),
  },
  withGrant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant: value,
    }
  ),
  withOverrideProvider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      override_provider: value,
    }
  ),
  withGrantMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grant+: converted,
    }
  ),
  withOverrideProviderMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      override_provider+: converted,
    }
  ),
}

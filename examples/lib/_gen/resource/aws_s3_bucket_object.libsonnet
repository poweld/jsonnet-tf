{
  local block = self,
  new(terraformName, bucket, key):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_object",
          type:: "resource",
          attributes:: ["acl", "arn", "bucket", "bucket_key_enabled", "cache_control", "content", "content_base64", "content_disposition", "content_encoding", "content_language", "content_type", "etag", "force_destroy", "id", "key", "kms_key_id", "metadata", "object_lock_legal_hold_status", "object_lock_mode", "object_lock_retain_until_date", "region", "server_side_encryption", "source", "source_hash", "storage_class", "tags", "tags_all", "version_id", "website_redirect"],
        },
      },
    }
    + block.withBucket(bucket)
    + block.withKey(key)
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
  withContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"content" expected to be of type "string"';
    {
      content: converted,
    }
  ),
  withContentBase64(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_base64" expected to be of type "string"';
    {
      content_base64: converted,
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
  withEtag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
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
  withSourceHash(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_hash" expected to be of type "string"';
    {
      source_hash: converted,
    }
  ),
  withStorageClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_class" expected to be of type "string"';
    {
      storage_class: converted,
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
}

{
  local block = self,
  new(terraformName, bucket, key):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_object",
          type:: "data",
          attributes:: ["arn", "body", "bucket", "bucket_key_enabled", "cache_control", "checksum_crc32", "checksum_crc32c", "checksum_crc64nvme", "checksum_mode", "checksum_sha1", "checksum_sha256", "content_disposition", "content_encoding", "content_language", "content_length", "content_type", "etag", "expiration", "expires", "id", "key", "last_modified", "metadata", "object_lock_legal_hold_status", "object_lock_mode", "object_lock_retain_until_date", "range", "region", "server_side_encryption", "sse_kms_key_id", "storage_class", "tags", "version_id", "website_redirect_location"],
        },
      },
    }
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
  withChecksumMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"checksum_mode" expected to be of type "string"';
    {
      checksum_mode: converted,
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
  withRange(value):: (
    local converted = value;
    assert std.isString(converted) : '"range" expected to be of type "string"';
    {
      range: converted,
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
  withVersionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
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

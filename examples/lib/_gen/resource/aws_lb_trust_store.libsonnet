{
  local block = self,
  new(terraformName, caCertificatesBundleS3Bucket, caCertificatesBundleS3Key):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lb_trust_store",
          type:: "resource",
          attributes:: ["arn", "arn_suffix", "ca_certificates_bundle_s3_bucket", "ca_certificates_bundle_s3_key", "ca_certificates_bundle_s3_object_version", "id", "name", "name_prefix", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withCaCertificatesBundleS3Bucket(caCertificatesBundleS3Bucket)
    + block.withCaCertificatesBundleS3Key(caCertificatesBundleS3Key)
  ),
  withCaCertificatesBundleS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificates_bundle_s3_bucket" expected to be of type "string"';
    {
      ca_certificates_bundle_s3_bucket: converted,
    }
  ),
  withCaCertificatesBundleS3Key(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificates_bundle_s3_key" expected to be of type "string"';
    {
      ca_certificates_bundle_s3_key: converted,
    }
  ),
  withCaCertificatesBundleS3ObjectVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificates_bundle_s3_object_version" expected to be of type "string"';
    {
      ca_certificates_bundle_s3_object_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

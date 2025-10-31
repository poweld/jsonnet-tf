{
  local block = self,
  new(terraformName, bucketName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_bucket_access_key",
          type:: "resource",
          attributes:: ["access_key_id", "bucket_name", "created_at", "id", "region", "secret_access_key", "status"],
        },
      },
    }
    + block.withBucketName(bucketName)
  ),
  withBucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
    {
      bucket_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

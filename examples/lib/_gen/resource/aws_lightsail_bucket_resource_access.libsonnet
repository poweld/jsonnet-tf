{
  local block = self,
  new(terraformName, bucketName, resourceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_bucket_resource_access",
          type:: "resource",
          attributes:: ["bucket_name", "id", "region", "resource_name"],
        },
      },
    }
    + block.withBucketName(bucketName)
    + block.withResourceName(resourceName)
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
  withResourceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_name" expected to be of type "string"';
    {
      resource_name: converted,
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

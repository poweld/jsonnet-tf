{
  local block = self,
  new(terraformName, s3BucketArn, subdirectory):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_location_s3",
          type:: "resource",
          attributes:: ["agent_arns", "arn", "id", "region", "s3_bucket_arn", "s3_storage_class", "subdirectory", "tags", "tags_all", "uri"],
        },
      },
    }
    + block.withS3BucketArn(s3BucketArn)
    + block.withSubdirectory(subdirectory)
  ),
  withAgentArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns: converted,
    }
  ),
  withAgentArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns+: converted,
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
  withS3BucketArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket_arn" expected to be of type "string"';
    {
      s3_bucket_arn: converted,
    }
  ),
  withS3StorageClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_storage_class" expected to be of type "string"';
    {
      s3_storage_class: converted,
    }
  ),
  withSubdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
  s3_config:: {
    local block = self,
    new(bucketAccessRoleArn):: (
      {}
      + block.withBucketAccessRoleArn(bucketAccessRoleArn)
    ),
    withBucketAccessRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_access_role_arn" expected to be of type "string"';
      {
        bucket_access_role_arn: converted,
      }
    ),
  },
  withS3Config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_config: value,
    }
  ),
  withS3ConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_config+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, indexId, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_faq",
          type:: "resource",
          attributes:: ["arn", "created_at", "description", "error_message", "faq_id", "file_format", "id", "index_id", "language_code", "name", "region", "role_arn", "status", "tags", "tags_all", "updated_at"],
        },
      },
    }
    + block.withIndexId(indexId)
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFileFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_format" expected to be of type "string"';
    {
      file_format: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIndexId(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
    }
  ),
  withLanguageCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  s3_path:: {
    local block = self,
    new(bucket, key):: (
      {}
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
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
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
  },
  withS3Path(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_path: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withS3PathMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_path+: converted,
    }
  ),
}

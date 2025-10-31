{
  local block = self,
  new(terraformName, contentType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_mskconnect_custom_plugin",
          type:: "resource",
          attributes:: ["arn", "content_type", "description", "id", "latest_revision", "name", "region", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withContentType(contentType)
    + block.withName(name)
  ),
  withContentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_type" expected to be of type "string"';
    {
      content_type: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  location:: {
    local block = self,
    new():: (
      {}
    ),
    s3:: {
      local block = self,
      new(bucketArn, fileKey):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withFileKey(fileKey)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withFileKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_key" expected to be of type "string"';
        {
          file_key: converted,
        }
      ),
      withObjectVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"object_version" expected to be of type "string"';
        {
          object_version: converted,
        }
      ),
    },
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
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
  withLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_gamelift_script",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all", "version", "zip_file"],
        },
      },
    }
    + block.withName(name)
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
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withZipFile(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_file" expected to be of type "string"';
    {
      zip_file: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  storage_location:: {
    local block = self,
    new(bucket, key, roleArn):: (
      {}
      + block.withBucket(bucket)
      + block.withKey(key)
      + block.withRoleArn(roleArn)
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
    withObjectVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_version" expected to be of type "string"';
      {
        object_version: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  withStorageLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_location: value,
    }
  ),
  withStorageLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_location+: converted,
    }
  ),
}

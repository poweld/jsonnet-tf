{
  local block = self,
  new(terraformName, application, bucket, key, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elastic_beanstalk_application_version",
          type:: "resource",
          attributes:: ["application", "arn", "bucket", "description", "force_delete", "id", "key", "name", "process", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withApplication(application)
    + block.withBucket(bucket)
    + block.withKey(key)
    + block.withName(name)
  ),
  withApplication(value):: (
    local converted = value;
    assert std.isString(converted) : '"application" expected to be of type "string"';
    {
      application: converted,
    }
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withForceDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProcess(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"process" expected to be of type "bool"';
    {
      process: converted,
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
}

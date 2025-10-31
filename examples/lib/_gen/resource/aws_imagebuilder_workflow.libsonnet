{
  local block = self,
  new(terraformName, name, type, version):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_imagebuilder_workflow",
          type:: "resource",
          attributes:: ["arn", "change_description", "data", "date_created", "description", "id", "kms_key_id", "name", "owner", "region", "tags", "tags_all", "type", "uri", "version"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
    + block.withVersion(version)
  ),
  withChangeDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"change_description" expected to be of type "string"';
    {
      change_description: converted,
    }
  ),
  withData(value):: (
    local converted = value;
    assert std.isString(converted) : '"data" expected to be of type "string"';
    {
      data: converted,
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
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
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

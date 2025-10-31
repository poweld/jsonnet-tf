{
  local block = self,
  new(terraformName, name, requireEncryption):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chime_voice_connector",
          type:: "resource",
          attributes:: ["arn", "aws_region", "id", "name", "outbound_host_name", "region", "require_encryption", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withRequireEncryption(requireEncryption)
  ),
  withAwsRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_region" expected to be of type "string"';
    {
      aws_region: converted,
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
  withRequireEncryption(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_encryption" expected to be of type "bool"';
    {
      require_encryption: converted,
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

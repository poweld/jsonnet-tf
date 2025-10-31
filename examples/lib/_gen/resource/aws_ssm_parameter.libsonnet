{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_parameter",
          type:: "resource",
          attributes:: ["allowed_pattern", "arn", "data_type", "description", "has_value_wo", "id", "insecure_value", "key_id", "name", "overwrite", "region", "tags", "tags_all", "tier", "type", "value", "value_wo", "value_wo_version", "version"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  withAllowedPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"allowed_pattern" expected to be of type "string"';
    {
      allowed_pattern: converted,
    }
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withDataType(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_type" expected to be of type "string"';
    {
      data_type: converted,
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
  withInsecureValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"insecure_value" expected to be of type "string"';
    {
      insecure_value: converted,
    }
  ),
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOverwrite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"overwrite" expected to be of type "bool"';
    {
      overwrite: converted,
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
  withTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
  withValueWo(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_wo" expected to be of type "string"';
    {
      value_wo: converted,
    }
  ),
  withValueWoVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"value_wo_version" expected to be of type "number"';
    {
      value_wo_version: converted,
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

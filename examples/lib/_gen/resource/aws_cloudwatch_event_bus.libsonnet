{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_event_bus",
          type:: "resource",
          attributes:: ["arn", "description", "event_source_name", "id", "kms_key_identifier", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEventSourceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_source_name" expected to be of type "string"';
    {
      event_source_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  dead_letter_config:: {
    local block = self,
    new():: (
      {}
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
  },
  log_config:: {
    local block = self,
    new():: (
      {}
    ),
    withIncludeDetail(value):: (
      local converted = value;
      assert std.isString(converted) : '"include_detail" expected to be of type "string"';
      {
        include_detail: converted,
      }
    ),
    withLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"level" expected to be of type "string"';
      {
        level: converted,
      }
    ),
  },
  withDeadLetterConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config: value,
    }
  ),
  withLogConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_config: value,
    }
  ),
  withDeadLetterConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config+: converted,
    }
  ),
  withLogConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_config+: converted,
    }
  ),
}

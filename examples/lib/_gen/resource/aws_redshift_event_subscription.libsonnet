{
  local block = self,
  new(terraformName, name, snsTopicArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_event_subscription",
          type:: "resource",
          attributes:: ["arn", "customer_aws_id", "enabled", "event_categories", "id", "name", "region", "severity", "sns_topic_arn", "source_ids", "source_type", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withSnsTopicArn(snsTopicArn)
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withEventCategories(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_categories" expected to be of type "set"';
    {
      event_categories: converted,
    }
  ),
  withEventCategoriesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_categories" expected to be of type "set"';
    {
      event_categories+: converted,
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
  withSeverity(value):: (
    local converted = value;
    assert std.isString(converted) : '"severity" expected to be of type "string"';
    {
      severity: converted,
    }
  ),
  withSnsTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
  withSourceIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source_ids" expected to be of type "set"';
    {
      source_ids: converted,
    }
  ),
  withSourceIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source_ids" expected to be of type "set"';
    {
      source_ids+: converted,
    }
  ),
  withSourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_type" expected to be of type "string"';
    {
      source_type: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

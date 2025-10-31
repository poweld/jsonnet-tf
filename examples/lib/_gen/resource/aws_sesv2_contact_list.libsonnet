{
  local block = self,
  new(terraformName, contactListName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_contact_list",
          type:: "resource",
          attributes:: ["arn", "contact_list_name", "created_timestamp", "description", "id", "last_updated_timestamp", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withContactListName(contactListName)
  ),
  withContactListName(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_list_name" expected to be of type "string"';
    {
      contact_list_name: converted,
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
  topic:: {
    local block = self,
    new(defaultSubscriptionStatus, displayName, topicName):: (
      {}
      + block.withDefaultSubscriptionStatus(defaultSubscriptionStatus)
      + block.withDisplayName(displayName)
      + block.withTopicName(topicName)
    ),
    withDefaultSubscriptionStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_subscription_status" expected to be of type "string"';
      {
        default_subscription_status: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withDisplayName(value):: (
      local converted = value;
      assert std.isString(converted) : '"display_name" expected to be of type "string"';
      {
        display_name: converted,
      }
    ),
    withTopicName(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_name" expected to be of type "string"';
      {
        topic_name: converted,
      }
    ),
  },
  withTopic(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic: value,
    }
  ),
  withTopicMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic+: converted,
    }
  ),
}

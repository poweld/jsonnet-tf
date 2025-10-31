{
  local block = self,
  new(terraformName, resourceGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_applicationinsights_application",
          type:: "resource",
          attributes:: ["arn", "auto_config_enabled", "auto_create", "cwe_monitor_enabled", "grouping_type", "id", "ops_center_enabled", "ops_item_sns_topic_arn", "region", "resource_group_name", "tags", "tags_all"],
        },
      },
    }
    + block.withResourceGroupName(resourceGroupName)
  ),
  withAutoConfigEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_config_enabled" expected to be of type "bool"';
    {
      auto_config_enabled: converted,
    }
  ),
  withAutoCreate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_create" expected to be of type "bool"';
    {
      auto_create: converted,
    }
  ),
  withCweMonitorEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cwe_monitor_enabled" expected to be of type "bool"';
    {
      cwe_monitor_enabled: converted,
    }
  ),
  withGroupingType(value):: (
    local converted = value;
    assert std.isString(converted) : '"grouping_type" expected to be of type "string"';
    {
      grouping_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOpsCenterEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ops_center_enabled" expected to be of type "bool"';
    {
      ops_center_enabled: converted,
    }
  ),
  withOpsItemSnsTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ops_item_sns_topic_arn" expected to be of type "string"';
    {
      ops_item_sns_topic_arn: converted,
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
  withResourceGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_group_name" expected to be of type "string"';
    {
      resource_group_name: converted,
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

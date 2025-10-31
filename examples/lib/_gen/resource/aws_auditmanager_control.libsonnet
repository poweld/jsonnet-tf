{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_auditmanager_control",
          type:: "resource",
          attributes:: ["action_plan_instructions", "action_plan_title", "arn", "description", "id", "name", "region", "tags", "tags_all", "testing_information", "type"],
        },
      },
    }
    + block.withName(name)
  ),
  withActionPlanInstructions(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_plan_instructions" expected to be of type "string"';
    {
      action_plan_instructions: converted,
    }
  ),
  withActionPlanTitle(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_plan_title" expected to be of type "string"';
    {
      action_plan_title: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withTestingInformation(value):: (
    local converted = value;
    assert std.isString(converted) : '"testing_information" expected to be of type "string"';
    {
      testing_information: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  control_mapping_sources:: {
    local block = self,
    new(sourceName, sourceSetUpOption, sourceType):: (
      {}
      + block.withSourceName(sourceName)
      + block.withSourceSetUpOption(sourceSetUpOption)
      + block.withSourceType(sourceType)
    ),
    withSourceDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_description" expected to be of type "string"';
      {
        source_description: converted,
      }
    ),
    withSourceFrequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_frequency" expected to be of type "string"';
      {
        source_frequency: converted,
      }
    ),
    withSourceKeyword(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_keyword" expected to be of type "list"';
      {
        source_keyword: converted,
      }
    ),
    withSourceKeywordMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"source_keyword" expected to be of type "list"';
      {
        source_keyword+: converted,
      }
    ),
    withSourceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_name" expected to be of type "string"';
      {
        source_name: converted,
      }
    ),
    withSourceSetUpOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_set_up_option" expected to be of type "string"';
      {
        source_set_up_option: converted,
      }
    ),
    withSourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_type" expected to be of type "string"';
      {
        source_type: converted,
      }
    ),
    withTroubleshootingText(value):: (
      local converted = value;
      assert std.isString(converted) : '"troubleshooting_text" expected to be of type "string"';
      {
        troubleshooting_text: converted,
      }
    ),
  },
  withControlMappingSources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_mapping_sources: value,
    }
  ),
  withControlMappingSourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_mapping_sources+: converted,
    }
  ),
}

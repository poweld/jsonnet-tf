{
  local block = self,
  new(terraformName, humanTaskUiName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_human_task_ui",
          type:: "resource",
          attributes:: ["arn", "human_task_ui_name", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withHumanTaskUiName(humanTaskUiName)
  ),
  withHumanTaskUiName(value):: (
    local converted = value;
    assert std.isString(converted) : '"human_task_ui_name" expected to be of type "string"';
    {
      human_task_ui_name: converted,
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
  ui_template:: {
    local block = self,
    new():: (
      {}
    ),
    withContent(value):: (
      local converted = value;
      assert std.isString(converted) : '"content" expected to be of type "string"';
      {
        content: converted,
      }
    ),
  },
  withUiTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ui_template: value,
    }
  ),
  withUiTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ui_template+: converted,
    }
  ),
}

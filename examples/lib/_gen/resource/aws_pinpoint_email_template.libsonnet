{
  local block = self,
  new(terraformName, templateName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpoint_email_template",
          type:: "resource",
          attributes:: ["arn", "region", "tags", "tags_all", "template_name"],
        },
      },
    }
    + block.withTemplateName(templateName)
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
  withTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  email_template:: {
    local block = self,
    new():: (
      {}
    ),
    withDefaultSubstitutions(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_substitutions" expected to be of type "string"';
      {
        default_substitutions: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withHtmlPart(value):: (
      local converted = value;
      assert std.isString(converted) : '"html_part" expected to be of type "string"';
      {
        html_part: converted,
      }
    ),
    withRecommenderId(value):: (
      local converted = value;
      assert std.isString(converted) : '"recommender_id" expected to be of type "string"';
      {
        recommender_id: converted,
      }
    ),
    withSubject(value):: (
      local converted = value;
      assert std.isString(converted) : '"subject" expected to be of type "string"';
      {
        subject: converted,
      }
    ),
    withTextPart(value):: (
      local converted = value;
      assert std.isString(converted) : '"text_part" expected to be of type "string"';
      {
        text_part: converted,
      }
    ),
    header:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header: value,
      }
    ),
    withHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header+: converted,
      }
    ),
  },
  withEmailTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_template: value,
    }
  ),
  withEmailTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_template+: converted,
    }
  ),
}

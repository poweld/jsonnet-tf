{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ses_template",
          type:: "resource",
          attributes:: ["arn", "html", "id", "name", "region", "subject", "text"],
        },
      },
    }
    + block.withName(name)
  ),
  withHtml(value):: (
    local converted = value;
    assert std.isString(converted) : '"html" expected to be of type "string"';
    {
      html: converted,
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
  withSubject(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject" expected to be of type "string"';
    {
      subject: converted,
    }
  ),
  withText(value):: (
    local converted = value;
    assert std.isString(converted) : '"text" expected to be of type "string"';
    {
      text: converted,
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

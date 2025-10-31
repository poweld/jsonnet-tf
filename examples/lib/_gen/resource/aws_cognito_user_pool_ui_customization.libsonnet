{
  local block = self,
  new(terraformName, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_user_pool_ui_customization",
          type:: "resource",
          attributes:: ["client_id", "creation_date", "css", "css_version", "id", "image_file", "image_url", "last_modified_date", "region", "user_pool_id"],
        },
      },
    }
    + block.withUserPoolId(userPoolId)
  ),
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  withCss(value):: (
    local converted = value;
    assert std.isString(converted) : '"css" expected to be of type "string"';
    {
      css: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageFile(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_file" expected to be of type "string"';
    {
      image_file: converted,
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
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
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

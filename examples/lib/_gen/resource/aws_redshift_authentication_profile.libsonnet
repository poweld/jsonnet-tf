{
  local block = self,
  new(terraformName, authenticationProfileContent, authenticationProfileName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_authentication_profile",
          type:: "resource",
          attributes:: ["authentication_profile_content", "authentication_profile_name", "id", "region"],
        },
      },
    }
    + block.withAuthenticationProfileContent(authenticationProfileContent)
    + block.withAuthenticationProfileName(authenticationProfileName)
  ),
  withAuthenticationProfileContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_profile_content" expected to be of type "string"';
    {
      authentication_profile_content: converted,
    }
  ),
  withAuthenticationProfileName(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_profile_name" expected to be of type "string"';
    {
      authentication_profile_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

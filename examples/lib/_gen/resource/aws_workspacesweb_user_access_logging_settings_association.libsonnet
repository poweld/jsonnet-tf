{
  local block = self,
  new(terraformName, portalArn, userAccessLoggingSettingsArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_user_access_logging_settings_association",
          type:: "resource",
          attributes:: ["portal_arn", "region", "user_access_logging_settings_arn"],
        },
      },
    }
    + block.withPortalArn(portalArn)
    + block.withUserAccessLoggingSettingsArn(userAccessLoggingSettingsArn)
  ),
  withPortalArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"portal_arn" expected to be of type "string"';
    {
      portal_arn: converted,
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
  withUserAccessLoggingSettingsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_access_logging_settings_arn" expected to be of type "string"';
    {
      user_access_logging_settings_arn: converted,
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

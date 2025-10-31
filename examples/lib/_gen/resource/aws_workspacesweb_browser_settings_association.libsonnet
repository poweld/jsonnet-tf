{
  local block = self,
  new(terraformName, browserSettingsArn, portalArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_browser_settings_association",
          type:: "resource",
          attributes:: ["browser_settings_arn", "portal_arn", "region"],
        },
      },
    }
    + block.withBrowserSettingsArn(browserSettingsArn)
    + block.withPortalArn(portalArn)
  ),
  withBrowserSettingsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"browser_settings_arn" expected to be of type "string"';
    {
      browser_settings_arn: converted,
    }
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

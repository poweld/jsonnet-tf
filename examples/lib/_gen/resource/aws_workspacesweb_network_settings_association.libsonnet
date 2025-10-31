{
  local block = self,
  new(terraformName, networkSettingsArn, portalArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_network_settings_association",
          type:: "resource",
          attributes:: ["network_settings_arn", "portal_arn", "region"],
        },
      },
    }
    + block.withNetworkSettingsArn(networkSettingsArn)
    + block.withPortalArn(portalArn)
  ),
  withNetworkSettingsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_settings_arn" expected to be of type "string"';
    {
      network_settings_arn: converted,
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

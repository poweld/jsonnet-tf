{
  local block = self,
  new(terraformName, portalArn, sessionLoggerArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_session_logger_association",
          type:: "resource",
          attributes:: ["portal_arn", "region", "session_logger_arn"],
        },
      },
    }
    + block.withPortalArn(portalArn)
    + block.withSessionLoggerArn(sessionLoggerArn)
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
  withSessionLoggerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_logger_arn" expected to be of type "string"';
    {
      session_logger_arn: converted,
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

{
  local block = self,
  new(terraformName, slackTeamName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chatbot_slack_workspace",
          type:: "data",
          attributes:: ["region", "slack_team_id", "slack_team_name"],
        },
      },
    }
    + block.withSlackTeamName(slackTeamName)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSlackTeamName(value):: (
    local converted = value;
    assert std.isString(converted) : '"slack_team_name" expected to be of type "string"';
    {
      slack_team_name: converted,
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

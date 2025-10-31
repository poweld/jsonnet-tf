{
  local block = self,
  new(terraformName, keyName, keyRole, secondsToLive, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_grafana_workspace_api_key",
          type:: "resource",
          attributes:: ["id", "key", "key_name", "key_role", "region", "seconds_to_live", "workspace_id"],
        },
      },
    }
    + block.withKeyName(keyName)
    + block.withKeyRole(keyRole)
    + block.withSecondsToLive(secondsToLive)
    + block.withWorkspaceId(workspaceId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  withKeyRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_role" expected to be of type "string"';
    {
      key_role: converted,
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
  withSecondsToLive(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"seconds_to_live" expected to be of type "number"';
    {
      seconds_to_live: converted,
    }
  ),
  withWorkspaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
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

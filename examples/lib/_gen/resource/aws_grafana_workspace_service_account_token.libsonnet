{
  local block = self,
  new(terraformName, name, secondsToLive, serviceAccountId, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_grafana_workspace_service_account_token",
          type:: "resource",
          attributes:: ["created_at", "expires_at", "id", "key", "name", "region", "seconds_to_live", "service_account_id", "service_account_token_id", "workspace_id"],
        },
      },
    }
    + block.withName(name)
    + block.withSecondsToLive(secondsToLive)
    + block.withServiceAccountId(serviceAccountId)
    + block.withWorkspaceId(workspaceId)
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
  withSecondsToLive(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"seconds_to_live" expected to be of type "number"';
    {
      seconds_to_live: converted,
    }
  ),
  withServiceAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_account_id" expected to be of type "string"';
    {
      service_account_id: converted,
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

{
  local block = self,
  new(terraformName, grafanaRole, name, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_grafana_workspace_service_account",
          type:: "resource",
          attributes:: ["grafana_role", "id", "name", "region", "service_account_id", "workspace_id"],
        },
      },
    }
    + block.withGrafanaRole(grafanaRole)
    + block.withName(name)
    + block.withWorkspaceId(workspaceId)
  ),
  withGrafanaRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"grafana_role" expected to be of type "string"';
    {
      grafana_role: converted,
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

{
  local block = self,
  new(terraformName, licenseType, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_grafana_license_association",
          type:: "resource",
          attributes:: ["free_trial_expiration", "grafana_token", "id", "license_expiration", "license_type", "region", "workspace_id"],
        },
      },
    }
    + block.withLicenseType(licenseType)
    + block.withWorkspaceId(workspaceId)
  ),
  withGrafanaToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"grafana_token" expected to be of type "string"';
    {
      grafana_token: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLicenseType(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_type" expected to be of type "string"';
    {
      license_type: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

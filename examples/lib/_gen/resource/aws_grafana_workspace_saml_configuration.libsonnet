{
  local block = self,
  new(terraformName, editorRoleValues, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_grafana_workspace_saml_configuration",
          type:: "resource",
          attributes:: ["admin_role_values", "allowed_organizations", "editor_role_values", "email_assertion", "groups_assertion", "id", "idp_metadata_url", "idp_metadata_xml", "login_assertion", "login_validity_duration", "name_assertion", "org_assertion", "region", "role_assertion", "status", "workspace_id"],
        },
      },
    }
    + block.withEditorRoleValues(editorRoleValues)
    + block.withWorkspaceId(workspaceId)
  ),
  withAdminRoleValues(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_role_values" expected to be of type "list"';
    {
      admin_role_values: converted,
    }
  ),
  withAdminRoleValuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"admin_role_values" expected to be of type "list"';
    {
      admin_role_values+: converted,
    }
  ),
  withAllowedOrganizations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"allowed_organizations" expected to be of type "list"';
    {
      allowed_organizations: converted,
    }
  ),
  withAllowedOrganizationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"allowed_organizations" expected to be of type "list"';
    {
      allowed_organizations+: converted,
    }
  ),
  withEditorRoleValues(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"editor_role_values" expected to be of type "list"';
    {
      editor_role_values: converted,
    }
  ),
  withEditorRoleValuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"editor_role_values" expected to be of type "list"';
    {
      editor_role_values+: converted,
    }
  ),
  withEmailAssertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_assertion" expected to be of type "string"';
    {
      email_assertion: converted,
    }
  ),
  withGroupsAssertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_assertion" expected to be of type "string"';
    {
      groups_assertion: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdpMetadataUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_metadata_url" expected to be of type "string"';
    {
      idp_metadata_url: converted,
    }
  ),
  withIdpMetadataXml(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_metadata_xml" expected to be of type "string"';
    {
      idp_metadata_xml: converted,
    }
  ),
  withLoginAssertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_assertion" expected to be of type "string"';
    {
      login_assertion: converted,
    }
  ),
  withLoginValidityDuration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"login_validity_duration" expected to be of type "number"';
    {
      login_validity_duration: converted,
    }
  ),
  withNameAssertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_assertion" expected to be of type "string"';
    {
      name_assertion: converted,
    }
  ),
  withOrgAssertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"org_assertion" expected to be of type "string"';
    {
      org_assertion: converted,
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
  withRoleAssertion(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_assertion" expected to be of type "string"';
    {
      role_assertion: converted,
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

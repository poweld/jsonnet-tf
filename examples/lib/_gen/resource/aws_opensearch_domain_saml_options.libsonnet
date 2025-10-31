{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearch_domain_saml_options",
          type:: "resource",
          attributes:: ["domain_name", "id", "region"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  saml_options:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withMasterBackendRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"master_backend_role" expected to be of type "string"';
      {
        master_backend_role: converted,
      }
    ),
    withMasterUserName(value):: (
      local converted = value;
      assert std.isString(converted) : '"master_user_name" expected to be of type "string"';
      {
        master_user_name: converted,
      }
    ),
    withRolesKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"roles_key" expected to be of type "string"';
      {
        roles_key: converted,
      }
    ),
    withSessionTimeoutMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"session_timeout_minutes" expected to be of type "number"';
      {
        session_timeout_minutes: converted,
      }
    ),
    withSubjectKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"subject_key" expected to be of type "string"';
      {
        subject_key: converted,
      }
    ),
    idp:: {
      local block = self,
      new(entityId, metadataContent):: (
        {}
        + block.withEntityId(entityId)
        + block.withMetadataContent(metadataContent)
      ),
      withEntityId(value):: (
        local converted = value;
        assert std.isString(converted) : '"entity_id" expected to be of type "string"';
        {
          entity_id: converted,
        }
      ),
      withMetadataContent(value):: (
        local converted = value;
        assert std.isString(converted) : '"metadata_content" expected to be of type "string"';
        {
          metadata_content: converted,
        }
      ),
    },
    withIdp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        idp: value,
      }
    ),
    withIdpMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        idp+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withSamlOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withSamlOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_policy_document",
          type:: "data",
          attributes:: ["id", "json", "minified_json", "override_json", "override_policy_documents", "policy_id", "source_json", "source_policy_documents", "version"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOverrideJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"override_json" expected to be of type "string"';
    {
      override_json: converted,
    }
  ),
  withOverridePolicyDocuments(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"override_policy_documents" expected to be of type "list"';
    {
      override_policy_documents: converted,
    }
  ),
  withOverridePolicyDocumentsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"override_policy_documents" expected to be of type "list"';
    {
      override_policy_documents+: converted,
    }
  ),
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  withSourceJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_json" expected to be of type "string"';
    {
      source_json: converted,
    }
  ),
  withSourcePolicyDocuments(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_policy_documents" expected to be of type "list"';
    {
      source_policy_documents: converted,
    }
  ),
  withSourcePolicyDocumentsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"source_policy_documents" expected to be of type "list"';
    {
      source_policy_documents+: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  statement:: {
    local block = self,
    new():: (
      {}
    ),
    withActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    withActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    withEffect(value):: (
      local converted = value;
      assert std.isString(converted) : '"effect" expected to be of type "string"';
      {
        effect: converted,
      }
    ),
    withNotActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_actions" expected to be of type "set"';
      {
        not_actions: converted,
      }
    ),
    withNotActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_actions" expected to be of type "set"';
      {
        not_actions+: converted,
      }
    ),
    withNotResources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
      {
        not_resources: converted,
      }
    ),
    withNotResourcesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
      {
        not_resources+: converted,
      }
    ),
    withResources(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources: converted,
      }
    ),
    withResourcesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
      {
        resources+: converted,
      }
    ),
    withSid(value):: (
      local converted = value;
      assert std.isString(converted) : '"sid" expected to be of type "string"';
      {
        sid: converted,
      }
    ),
    condition:: {
      local block = self,
      new(test, values, variable):: (
        {}
        + block.withTest(test)
        + block.withValues(values)
        + block.withVariable(variable)
      ),
      withTest(value):: (
        local converted = value;
        assert std.isString(converted) : '"test" expected to be of type "string"';
        {
          test: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
      withVariable(value):: (
        local converted = value;
        assert std.isString(converted) : '"variable" expected to be of type "string"';
        {
          variable: converted,
        }
      ),
    },
    not_principals:: {
      local block = self,
      new(identifiers, type):: (
        {}
        + block.withIdentifiers(identifiers)
        + block.withType(type)
      ),
      withIdentifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers: converted,
        }
      ),
      withIdentifiersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers+: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    principals:: {
      local block = self,
      new(identifiers, type):: (
        {}
        + block.withIdentifiers(identifiers)
        + block.withType(type)
      ),
      withIdentifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers: converted,
        }
      ),
      withIdentifiersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identifiers" expected to be of type "set"';
        {
          identifiers+: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withCondition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition: value,
      }
    ),
    withNotPrincipals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not_principals: value,
      }
    ),
    withPrincipals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principals: value,
      }
    ),
    withConditionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition+: converted,
      }
    ),
    withNotPrincipalsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not_principals+: converted,
      }
    ),
    withPrincipalsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        principals+: converted,
      }
    ),
  },
  withStatement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement: value,
    }
  ),
  withStatementMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statement+: converted,
    }
  ),
}

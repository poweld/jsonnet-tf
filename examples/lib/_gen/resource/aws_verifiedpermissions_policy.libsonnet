{
  local block = self,
  new(terraformName, policyStoreId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedpermissions_policy",
          type:: "resource",
          attributes:: ["created_date", "id", "policy_id", "policy_store_id", "region"],
        },
      },
    }
    + block.withPolicyStoreId(policyStoreId)
  ),
  withPolicyStoreId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_store_id" expected to be of type "string"';
    {
      policy_store_id: converted,
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
  definition:: {
    local block = self,
    new():: (
      {}
    ),
    static:: {
      local block = self,
      new(statement):: (
        {}
        + block.withStatement(statement)
      ),
      withDescription(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      withStatement(value):: (
        local converted = value;
        assert std.isString(converted) : '"statement" expected to be of type "string"';
        {
          statement: converted,
        }
      ),
    },
    template_linked:: {
      local block = self,
      new(policyTemplateId):: (
        {}
        + block.withPolicyTemplateId(policyTemplateId)
      ),
      withPolicyTemplateId(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_template_id" expected to be of type "string"';
        {
          policy_template_id: converted,
        }
      ),
      principal:: {
        local block = self,
        new(entityId, entityType):: (
          {}
          + block.withEntityId(entityId)
          + block.withEntityType(entityType)
        ),
        withEntityId(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_id" expected to be of type "string"';
          {
            entity_id: converted,
          }
        ),
        withEntityType(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_type" expected to be of type "string"';
          {
            entity_type: converted,
          }
        ),
      },
      resource:: {
        local block = self,
        new(entityId, entityType):: (
          {}
          + block.withEntityId(entityId)
          + block.withEntityType(entityType)
        ),
        withEntityId(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_id" expected to be of type "string"';
          {
            entity_id: converted,
          }
        ),
        withEntityType(value):: (
          local converted = value;
          assert std.isString(converted) : '"entity_type" expected to be of type "string"';
          {
            entity_type: converted,
          }
        ),
      },
      withPrincipal(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          principal: value,
        }
      ),
      withResource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource: value,
        }
      ),
      withPrincipalMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          principal+: converted,
        }
      ),
      withResourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource+: converted,
        }
      ),
    },
    withStatic(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static: value,
      }
    ),
    withTemplateLinked(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_linked: value,
      }
    ),
    withStaticMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static+: converted,
      }
    ),
    withTemplateLinkedMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        template_linked+: converted,
      }
    ),
  },
  withDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition: value,
    }
  ),
  withDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition+: converted,
    }
  ),
}

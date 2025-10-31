{
  local block = self,
  new(terraformName, policyStoreId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedpermissions_identity_source",
          type:: "resource",
          attributes:: ["id", "policy_store_id", "principal_entity_type", "region"],
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
  withPrincipalEntityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_entity_type" expected to be of type "string"';
    {
      principal_entity_type: converted,
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
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    cognito_user_pool_configuration:: {
      local block = self,
      new(userPoolArn):: (
        {}
        + block.withUserPoolArn(userPoolArn)
      ),
      withClientIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
        {
          client_ids: converted,
        }
      ),
      withClientIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
        {
          client_ids+: converted,
        }
      ),
      withUserPoolArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_arn" expected to be of type "string"';
        {
          user_pool_arn: converted,
        }
      ),
      group_configuration:: {
        local block = self,
        new(groupEntityType):: (
          {}
          + block.withGroupEntityType(groupEntityType)
        ),
        withGroupEntityType(value):: (
          local converted = value;
          assert std.isString(converted) : '"group_entity_type" expected to be of type "string"';
          {
            group_entity_type: converted,
          }
        ),
      },
      withGroupConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration: value,
        }
      ),
      withGroupConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration+: converted,
        }
      ),
    },
    open_id_connect_configuration:: {
      local block = self,
      new(issuer):: (
        {}
        + block.withIssuer(issuer)
      ),
      withEntityIdPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"entity_id_prefix" expected to be of type "string"';
        {
          entity_id_prefix: converted,
        }
      ),
      withIssuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
      group_configuration:: {
        local block = self,
        new(groupClaim, groupEntityType):: (
          {}
          + block.withGroupClaim(groupClaim)
          + block.withGroupEntityType(groupEntityType)
        ),
        withGroupClaim(value):: (
          local converted = value;
          assert std.isString(converted) : '"group_claim" expected to be of type "string"';
          {
            group_claim: converted,
          }
        ),
        withGroupEntityType(value):: (
          local converted = value;
          assert std.isString(converted) : '"group_entity_type" expected to be of type "string"';
          {
            group_entity_type: converted,
          }
        ),
      },
      token_selection:: {
        local block = self,
        new():: (
          {}
        ),
        access_token_only:: {
          local block = self,
          new():: (
            {}
          ),
          withAudiences(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"audiences" expected to be of type "list"';
            {
              audiences: converted,
            }
          ),
          withAudiencesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"audiences" expected to be of type "list"';
            {
              audiences+: converted,
            }
          ),
          withPrincipalIdClaim(value):: (
            local converted = value;
            assert std.isString(converted) : '"principal_id_claim" expected to be of type "string"';
            {
              principal_id_claim: converted,
            }
          ),
        },
        identity_token_only:: {
          local block = self,
          new():: (
            {}
          ),
          withClientIds(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
            {
              client_ids: converted,
            }
          ),
          withClientIdsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"client_ids" expected to be of type "list"';
            {
              client_ids+: converted,
            }
          ),
          withPrincipalIdClaim(value):: (
            local converted = value;
            assert std.isString(converted) : '"principal_id_claim" expected to be of type "string"';
            {
              principal_id_claim: converted,
            }
          ),
        },
        withAccessTokenOnly(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_token_only: value,
          }
        ),
        withIdentityTokenOnly(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            identity_token_only: value,
          }
        ),
        withAccessTokenOnlyMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            access_token_only+: converted,
          }
        ),
        withIdentityTokenOnlyMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            identity_token_only+: converted,
          }
        ),
      },
      withGroupConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration: value,
        }
      ),
      withTokenSelection(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          token_selection: value,
        }
      ),
      withGroupConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          group_configuration+: converted,
        }
      ),
      withTokenSelectionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          token_selection+: converted,
        }
      ),
    },
    withCognitoUserPoolConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_user_pool_configuration: value,
      }
    ),
    withOpenIdConnectConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        open_id_connect_configuration: value,
      }
    ),
    withCognitoUserPoolConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_user_pool_configuration+: converted,
      }
    ),
    withOpenIdConnectConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        open_id_connect_configuration+: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}

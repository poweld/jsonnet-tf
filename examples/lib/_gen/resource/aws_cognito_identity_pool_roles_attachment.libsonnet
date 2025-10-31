{
  local block = self,
  new(terraformName, identityPoolId, roles):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_identity_pool_roles_attachment",
          type:: "resource",
          attributes:: ["id", "identity_pool_id", "region", "roles"],
        },
      },
    }
    + block.withIdentityPoolId(identityPoolId)
    + block.withRoles(roles)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
    {
      identity_pool_id: converted,
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
  withRoles(value):: (
    local converted = value;
    assert std.isObject(converted) : '"roles" expected to be of type "map"';
    {
      roles: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  role_mapping:: {
    local block = self,
    new(identityProvider, type):: (
      {}
      + block.withIdentityProvider(identityProvider)
      + block.withType(type)
    ),
    withAmbiguousRoleResolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"ambiguous_role_resolution" expected to be of type "string"';
      {
        ambiguous_role_resolution: converted,
      }
    ),
    withIdentityProvider(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_provider" expected to be of type "string"';
      {
        identity_provider: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    mapping_rule:: {
      local block = self,
      new(claim, matchType, roleArn, value):: (
        {}
        + block.withClaim(claim)
        + block.withMatchType(matchType)
        + block.withRoleArn(roleArn)
        + block.withValue(value)
      ),
      withClaim(value):: (
        local converted = value;
        assert std.isString(converted) : '"claim" expected to be of type "string"';
        {
          claim: converted,
        }
      ),
      withMatchType(value):: (
        local converted = value;
        assert std.isString(converted) : '"match_type" expected to be of type "string"';
        {
          match_type: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withMappingRule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mapping_rule: value,
      }
    ),
    withMappingRuleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mapping_rule+: converted,
      }
    ),
  },
  withRoleMapping(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_mapping: value,
    }
  ),
  withRoleMappingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      role_mapping+: converted,
    }
  ),
}

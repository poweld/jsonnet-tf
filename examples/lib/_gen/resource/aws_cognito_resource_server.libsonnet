{
  local block = self,
  new(terraformName, identifier, name, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_resource_server",
          type:: "resource",
          attributes:: ["id", "identifier", "name", "region", "scope_identifiers", "user_pool_id"],
        },
      },
    }
    + block.withIdentifier(identifier)
    + block.withName(name)
    + block.withUserPoolId(userPoolId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"identifier" expected to be of type "string"';
    {
      identifier: converted,
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
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  scope:: {
    local block = self,
    new(scopeDescription, scopeName):: (
      {}
      + block.withScopeDescription(scopeDescription)
      + block.withScopeName(scopeName)
    ),
    withScopeDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope_description" expected to be of type "string"';
      {
        scope_description: converted,
      }
    ),
    withScopeName(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope_name" expected to be of type "string"';
      {
        scope_name: converted,
      }
    ),
  },
  withScope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  withScopeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
}

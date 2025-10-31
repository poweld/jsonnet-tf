{
  local block = self,
  new(terraformName, granteePrincipal, keyId, operations):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_grant",
          type:: "resource",
          attributes:: ["grant_creation_tokens", "grant_id", "grant_token", "grantee_principal", "id", "key_id", "name", "operations", "region", "retire_on_delete", "retiring_principal"],
        },
      },
    }
    + block.withGranteePrincipal(granteePrincipal)
    + block.withKeyId(keyId)
    + block.withOperations(operations)
  ),
  withGrantCreationTokens(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_creation_tokens" expected to be of type "set"';
    {
      grant_creation_tokens: converted,
    }
  ),
  withGrantCreationTokensMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_creation_tokens" expected to be of type "set"';
    {
      grant_creation_tokens+: converted,
    }
  ),
  withGranteePrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"grantee_principal" expected to be of type "string"';
    {
      grantee_principal: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOperations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operations" expected to be of type "set"';
    {
      operations: converted,
    }
  ),
  withOperationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operations" expected to be of type "set"';
    {
      operations+: converted,
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
  withRetireOnDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retire_on_delete" expected to be of type "bool"';
    {
      retire_on_delete: converted,
    }
  ),
  withRetiringPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"retiring_principal" expected to be of type "string"';
    {
      retiring_principal: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  constraints:: {
    local block = self,
    new():: (
      {}
    ),
    withEncryptionContextEquals(value):: (
      local converted = value;
      assert std.isObject(converted) : '"encryption_context_equals" expected to be of type "map"';
      {
        encryption_context_equals: converted,
      }
    ),
    withEncryptionContextSubset(value):: (
      local converted = value;
      assert std.isObject(converted) : '"encryption_context_subset" expected to be of type "map"';
      {
        encryption_context_subset: converted,
      }
    ),
  },
  withConstraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      constraints: value,
    }
  ),
  withConstraintsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      constraints+: converted,
    }
  ),
}

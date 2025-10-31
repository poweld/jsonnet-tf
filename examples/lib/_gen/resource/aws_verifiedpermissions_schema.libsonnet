{
  local block = self,
  new(terraformName, policyStoreId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedpermissions_schema",
          type:: "resource",
          attributes:: ["id", "namespaces", "policy_store_id", "region"],
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
    new(value):: (
      {}
      + block.withValue(value)
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
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

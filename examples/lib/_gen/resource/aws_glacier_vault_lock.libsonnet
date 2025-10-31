{
  local block = self,
  new(terraformName, completeLock, policy, vaultName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glacier_vault_lock",
          type:: "resource",
          attributes:: ["complete_lock", "id", "ignore_deletion_error", "policy", "region", "vault_name"],
        },
      },
    }
    + block.withCompleteLock(completeLock)
    + block.withPolicy(policy)
    + block.withVaultName(vaultName)
  ),
  withCompleteLock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"complete_lock" expected to be of type "bool"';
    {
      complete_lock: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIgnoreDeletionError(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_deletion_error" expected to be of type "bool"';
    {
      ignore_deletion_error: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  withVaultName(value):: (
    local converted = value;
    assert std.isString(converted) : '"vault_name" expected to be of type "string"';
    {
      vault_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

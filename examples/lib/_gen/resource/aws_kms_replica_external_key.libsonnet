{
  local block = self,
  new(terraformName, primaryKeyArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_replica_external_key",
          type:: "resource",
          attributes:: ["arn", "bypass_policy_lockout_safety_check", "deletion_window_in_days", "description", "enabled", "expiration_model", "id", "key_id", "key_material_base64", "key_state", "key_usage", "policy", "primary_key_arn", "region", "tags", "tags_all", "valid_to"],
        },
      },
    }
    + block.withPrimaryKeyArn(primaryKeyArn)
  ),
  withBypassPolicyLockoutSafetyCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bypass_policy_lockout_safety_check" expected to be of type "bool"';
    {
      bypass_policy_lockout_safety_check: converted,
    }
  ),
  withDeletionWindowInDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deletion_window_in_days" expected to be of type "number"';
    {
      deletion_window_in_days: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyMaterialBase64(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_material_base64" expected to be of type "string"';
    {
      key_material_base64: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  withPrimaryKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_key_arn" expected to be of type "string"';
    {
      primary_key_arn: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withValidTo(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_to" expected to be of type "string"';
    {
      valid_to: converted,
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

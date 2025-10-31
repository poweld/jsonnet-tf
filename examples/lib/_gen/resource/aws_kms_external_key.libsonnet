{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_external_key",
          type:: "resource",
          attributes:: ["arn", "bypass_policy_lockout_safety_check", "deletion_window_in_days", "description", "enabled", "expiration_model", "id", "key_material_base64", "key_spec", "key_state", "key_usage", "multi_region", "policy", "region", "tags", "tags_all", "valid_to"],
        },
      },
    }
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
  withKeySpec(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_spec" expected to be of type "string"';
    {
      key_spec: converted,
    }
  ),
  withKeyUsage(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_usage" expected to be of type "string"';
    {
      key_usage: converted,
    }
  ),
  withMultiRegion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_region" expected to be of type "bool"';
    {
      multi_region: converted,
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

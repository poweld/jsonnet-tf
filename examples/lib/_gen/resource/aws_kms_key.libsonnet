{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_key",
          type:: "resource",
          attributes:: ["arn", "bypass_policy_lockout_safety_check", "custom_key_store_id", "customer_master_key_spec", "deletion_window_in_days", "description", "enable_key_rotation", "id", "is_enabled", "key_id", "key_usage", "multi_region", "policy", "region", "rotation_period_in_days", "tags", "tags_all", "xks_key_id"],
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
  withCustomKeyStoreId(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_id" expected to be of type "string"';
    {
      custom_key_store_id: converted,
    }
  ),
  withCustomerMasterKeySpec(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_master_key_spec" expected to be of type "string"';
    {
      customer_master_key_spec: converted,
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
  withEnableKeyRotation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_key_rotation" expected to be of type "bool"';
    {
      enable_key_rotation: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_enabled" expected to be of type "bool"';
    {
      is_enabled: converted,
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
  withRotationPeriodInDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rotation_period_in_days" expected to be of type "number"';
    {
      rotation_period_in_days: converted,
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
  withXksKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_key_id" expected to be of type "string"';
    {
      xks_key_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

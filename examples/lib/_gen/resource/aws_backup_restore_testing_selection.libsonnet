{
  local block = self,
  new(terraformName, iamRoleArn, name, protectedResourceType, restoreTestingPlanName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_restore_testing_selection",
          type:: "resource",
          attributes:: ["iam_role_arn", "name", "protected_resource_arns", "protected_resource_type", "region", "restore_metadata_overrides", "restore_testing_plan_name", "validation_window_hours"],
        },
      },
    }
    + block.withIamRoleArn(iamRoleArn)
    + block.withName(name)
    + block.withProtectedResourceType(protectedResourceType)
    + block.withRestoreTestingPlanName(restoreTestingPlanName)
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProtectedResourceArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protected_resource_arns" expected to be of type "set"';
    {
      protected_resource_arns: converted,
    }
  ),
  withProtectedResourceArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protected_resource_arns" expected to be of type "set"';
    {
      protected_resource_arns+: converted,
    }
  ),
  withProtectedResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"protected_resource_type" expected to be of type "string"';
    {
      protected_resource_type: converted,
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
  withRestoreMetadataOverrides(value):: (
    local converted = value;
    assert std.isObject(converted) : '"restore_metadata_overrides" expected to be of type "map"';
    {
      restore_metadata_overrides: converted,
    }
  ),
  withRestoreTestingPlanName(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_testing_plan_name" expected to be of type "string"';
    {
      restore_testing_plan_name: converted,
    }
  ),
  withValidationWindowHours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"validation_window_hours" expected to be of type "number"';
    {
      validation_window_hours: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  protected_resource_conditions:: {
    local block = self,
    new():: (
      {}
    ),
    string_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    string_not_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    withStringEquals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals: value,
      }
    ),
    withStringNotEquals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals: value,
      }
    ),
    withStringEqualsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals+: converted,
      }
    ),
    withStringNotEqualsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals+: converted,
      }
    ),
  },
  withProtectedResourceConditions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protected_resource_conditions: value,
    }
  ),
  withProtectedResourceConditionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protected_resource_conditions+: converted,
    }
  ),
}

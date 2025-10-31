{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicecatalog_provisioned_product",
          type:: "resource",
          attributes:: ["accept_language", "arn", "cloudwatch_dashboard_names", "created_time", "id", "ignore_errors", "last_provisioning_record_id", "last_record_id", "last_successful_provisioning_record_id", "launch_role_arn", "name", "notification_arns", "outputs", "path_id", "path_name", "product_id", "product_name", "provisioning_artifact_id", "provisioning_artifact_name", "region", "retain_physical_resources", "status", "status_message", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
  ),
  withAcceptLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"accept_language" expected to be of type "string"';
    {
      accept_language: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIgnoreErrors(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_errors" expected to be of type "bool"';
    {
      ignore_errors: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNotificationArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_arns" expected to be of type "list"';
    {
      notification_arns: converted,
    }
  ),
  withNotificationArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_arns" expected to be of type "list"';
    {
      notification_arns+: converted,
    }
  ),
  withPathId(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_id" expected to be of type "string"';
    {
      path_id: converted,
    }
  ),
  withPathName(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_name" expected to be of type "string"';
    {
      path_name: converted,
    }
  ),
  withProductId(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_id" expected to be of type "string"';
    {
      product_id: converted,
    }
  ),
  withProductName(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_name" expected to be of type "string"';
    {
      product_name: converted,
    }
  ),
  withProvisioningArtifactId(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_artifact_id" expected to be of type "string"';
    {
      provisioning_artifact_id: converted,
    }
  ),
  withProvisioningArtifactName(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_artifact_name" expected to be of type "string"';
    {
      provisioning_artifact_name: converted,
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
  withRetainPhysicalResources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_physical_resources" expected to be of type "bool"';
    {
      retain_physical_resources: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  provisioning_parameters:: {
    local block = self,
    new(key):: (
      {}
      + block.withKey(key)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withUsePreviousValue(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_previous_value" expected to be of type "bool"';
      {
        use_previous_value: converted,
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
  stack_set_provisioning_preferences:: {
    local block = self,
    new():: (
      {}
    ),
    withAccounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"accounts" expected to be of type "list"';
      {
        accounts: converted,
      }
    ),
    withAccountsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"accounts" expected to be of type "list"';
      {
        accounts+: converted,
      }
    ),
    withFailureToleranceCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_tolerance_count" expected to be of type "number"';
      {
        failure_tolerance_count: converted,
      }
    ),
    withFailureTolerancePercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_tolerance_percentage" expected to be of type "number"';
      {
        failure_tolerance_percentage: converted,
      }
    ),
    withMaxConcurrencyCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrency_count" expected to be of type "number"';
      {
        max_concurrency_count: converted,
      }
    ),
    withMaxConcurrencyPercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrency_percentage" expected to be of type "number"';
      {
        max_concurrency_percentage: converted,
      }
    ),
    withRegions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions: converted,
      }
    ),
    withRegionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions+: converted,
      }
    ),
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withProvisioningParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_parameters: value,
    }
  ),
  withStackSetProvisioningPreferences(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stack_set_provisioning_preferences: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withProvisioningParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_parameters+: converted,
    }
  ),
  withStackSetProvisioningPreferencesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stack_set_provisioning_preferences+: converted,
    }
  ),
}

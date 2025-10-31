{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudtrail_event_data_store",
          type:: "resource",
          attributes:: ["arn", "billing_mode", "id", "kms_key_id", "multi_region_enabled", "name", "organization_enabled", "region", "retention_period", "suspend", "tags", "tags_all", "termination_protection_enabled"],
        },
      },
    }
    + block.withName(name)
  ),
  withBillingMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"billing_mode" expected to be of type "string"';
    {
      billing_mode: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withMultiRegionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_region_enabled" expected to be of type "bool"';
    {
      multi_region_enabled: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOrganizationEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"organization_enabled" expected to be of type "bool"';
    {
      organization_enabled: converted,
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
  withRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period" expected to be of type "number"';
    {
      retention_period: converted,
    }
  ),
  withSuspend(value):: (
    local converted = value;
    assert std.isString(converted) : '"suspend" expected to be of type "string"';
    {
      suspend: converted,
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
  withTerminationProtectionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"termination_protection_enabled" expected to be of type "bool"';
    {
      termination_protection_enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  advanced_event_selector:: {
    local block = self,
    new():: (
      {}
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    field_selector:: {
      local block = self,
      new():: (
        {}
      ),
      withEndsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with: converted,
        }
      ),
      withEndsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"ends_with" expected to be of type "list"';
        {
          ends_with+: converted,
        }
      ),
      withEquals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals: converted,
        }
      ),
      withEqualsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals+: converted,
        }
      ),
      withField(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      withNotEndsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with: converted,
        }
      ),
      withNotEndsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_ends_with" expected to be of type "list"';
        {
          not_ends_with+: converted,
        }
      ),
      withNotEquals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals: converted,
        }
      ),
      withNotEqualsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals+: converted,
        }
      ),
      withNotStartsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with: converted,
        }
      ),
      withNotStartsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_starts_with" expected to be of type "list"';
        {
          not_starts_with+: converted,
        }
      ),
      withStartsWith(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with: converted,
        }
      ),
      withStartsWithMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"starts_with" expected to be of type "list"';
        {
          starts_with+: converted,
        }
      ),
    },
    withFieldSelector(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector: value,
      }
    ),
    withFieldSelectorMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_selector+: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAdvancedEventSelector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAdvancedEventSelectorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      advanced_event_selector+: converted,
    }
  ),
}

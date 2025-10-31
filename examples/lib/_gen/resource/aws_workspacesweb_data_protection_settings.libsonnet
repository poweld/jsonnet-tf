{
  local block = self,
  new(terraformName, displayName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_data_protection_settings",
          type:: "resource",
          attributes:: ["additional_encryption_context", "associated_portal_arns", "customer_managed_key", "data_protection_settings_arn", "description", "display_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDisplayName(displayName)
  ),
  withAdditionalEncryptionContext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  withCustomerManagedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  inline_redaction_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withGlobalConfidenceLevel(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"global_confidence_level" expected to be of type "number"';
      {
        global_confidence_level: converted,
      }
    ),
    withGlobalEnforcedUrls(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_enforced_urls" expected to be of type "list"';
      {
        global_enforced_urls: converted,
      }
    ),
    withGlobalEnforcedUrlsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_enforced_urls" expected to be of type "list"';
      {
        global_enforced_urls+: converted,
      }
    ),
    withGlobalExemptUrls(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_exempt_urls" expected to be of type "list"';
      {
        global_exempt_urls: converted,
      }
    ),
    withGlobalExemptUrlsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"global_exempt_urls" expected to be of type "list"';
      {
        global_exempt_urls+: converted,
      }
    ),
    inline_redaction_pattern:: {
      local block = self,
      new():: (
        {}
      ),
      withBuiltInPatternId(value):: (
        local converted = value;
        assert std.isString(converted) : '"built_in_pattern_id" expected to be of type "string"';
        {
          built_in_pattern_id: converted,
        }
      ),
      withConfidenceLevel(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"confidence_level" expected to be of type "number"';
        {
          confidence_level: converted,
        }
      ),
      withEnforcedUrls(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"enforced_urls" expected to be of type "list"';
        {
          enforced_urls: converted,
        }
      ),
      withEnforcedUrlsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"enforced_urls" expected to be of type "list"';
        {
          enforced_urls+: converted,
        }
      ),
      withExemptUrls(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"exempt_urls" expected to be of type "list"';
        {
          exempt_urls: converted,
        }
      ),
      withExemptUrlsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"exempt_urls" expected to be of type "list"';
        {
          exempt_urls+: converted,
        }
      ),
      custom_pattern:: {
        local block = self,
        new(patternName, patternRegex):: (
          {}
          + block.withPatternName(patternName)
          + block.withPatternRegex(patternRegex)
        ),
        withKeywordRegex(value):: (
          local converted = value;
          assert std.isString(converted) : '"keyword_regex" expected to be of type "string"';
          {
            keyword_regex: converted,
          }
        ),
        withPatternDescription(value):: (
          local converted = value;
          assert std.isString(converted) : '"pattern_description" expected to be of type "string"';
          {
            pattern_description: converted,
          }
        ),
        withPatternName(value):: (
          local converted = value;
          assert std.isString(converted) : '"pattern_name" expected to be of type "string"';
          {
            pattern_name: converted,
          }
        ),
        withPatternRegex(value):: (
          local converted = value;
          assert std.isString(converted) : '"pattern_regex" expected to be of type "string"';
          {
            pattern_regex: converted,
          }
        ),
      },
      redaction_place_holder:: {
        local block = self,
        new(redactionPlaceHolderType):: (
          {}
          + block.withRedactionPlaceHolderType(redactionPlaceHolderType)
        ),
        withRedactionPlaceHolderText(value):: (
          local converted = value;
          assert std.isString(converted) : '"redaction_place_holder_text" expected to be of type "string"';
          {
            redaction_place_holder_text: converted,
          }
        ),
        withRedactionPlaceHolderType(value):: (
          local converted = value;
          assert std.isString(converted) : '"redaction_place_holder_type" expected to be of type "string"';
          {
            redaction_place_holder_type: converted,
          }
        ),
      },
      withCustomPattern(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_pattern: value,
        }
      ),
      withRedactionPlaceHolder(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redaction_place_holder: value,
        }
      ),
      withCustomPatternMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_pattern+: converted,
        }
      ),
      withRedactionPlaceHolderMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redaction_place_holder+: converted,
        }
      ),
    },
    withInlineRedactionPattern(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_redaction_pattern: value,
      }
    ),
    withInlineRedactionPatternMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inline_redaction_pattern+: converted,
      }
    ),
  },
  withInlineRedactionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_redaction_configuration: value,
    }
  ),
  withInlineRedactionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_redaction_configuration+: converted,
    }
  ),
}

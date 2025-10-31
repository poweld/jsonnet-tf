{
  local block = self,
  new(terraformName, defaultExpirationDays, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_customerprofiles_domain",
          type:: "resource",
          attributes:: ["arn", "dead_letter_queue_url", "default_encryption_key", "default_expiration_days", "domain_name", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDefaultExpirationDays(defaultExpirationDays)
    + block.withDomainName(domainName)
  ),
  withDeadLetterQueueUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"dead_letter_queue_url" expected to be of type "string"';
    {
      dead_letter_queue_url: converted,
    }
  ),
  withDefaultEncryptionKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_encryption_key" expected to be of type "string"';
    {
      default_encryption_key: converted,
    }
  ),
  withDefaultExpirationDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_expiration_days" expected to be of type "number"';
    {
      default_expiration_days: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  matching:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    auto_merging:: {
      local block = self,
      new(enabled):: (
        {}
        + block.withEnabled(enabled)
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withMinAllowedConfidenceScoreForMerging(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_allowed_confidence_score_for_merging" expected to be of type "number"';
        {
          min_allowed_confidence_score_for_merging: converted,
        }
      ),
      conflict_resolution:: {
        local block = self,
        new(conflictResolvingModel):: (
          {}
          + block.withConflictResolvingModel(conflictResolvingModel)
        ),
        withConflictResolvingModel(value):: (
          local converted = value;
          assert std.isString(converted) : '"conflict_resolving_model" expected to be of type "string"';
          {
            conflict_resolving_model: converted,
          }
        ),
        withSourceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"source_name" expected to be of type "string"';
          {
            source_name: converted,
          }
        ),
      },
      consolidation:: {
        local block = self,
        new(matchingAttributesList):: (
          {}
          + block.withMatchingAttributesList(matchingAttributesList)
        ),
        withMatchingAttributesList(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"matching_attributes_list" expected to be of type "list"';
          {
            matching_attributes_list: converted,
          }
        ),
        withMatchingAttributesListMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"matching_attributes_list" expected to be of type "list"';
          {
            matching_attributes_list+: converted,
          }
        ),
      },
      withConflictResolution(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conflict_resolution: value,
        }
      ),
      withConsolidation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          consolidation: value,
        }
      ),
      withConflictResolutionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          conflict_resolution+: converted,
        }
      ),
      withConsolidationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          consolidation+: converted,
        }
      ),
    },
    exporting_config:: {
      local block = self,
      new():: (
        {}
      ),
      s3_exporting:: {
        local block = self,
        new(s3BucketName):: (
          {}
          + block.withS3BucketName(s3BucketName)
        ),
        withS3BucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        withS3KeyName(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_key_name" expected to be of type "string"';
          {
            s3_key_name: converted,
          }
        ),
      },
      withS3Exporting(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting: value,
        }
      ),
      withS3ExportingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting+: converted,
        }
      ),
    },
    job_schedule:: {
      local block = self,
      new(dayOfTheWeek, time):: (
        {}
        + block.withDayOfTheWeek(dayOfTheWeek)
        + block.withTime(time)
      ),
      withDayOfTheWeek(value):: (
        local converted = value;
        assert std.isString(converted) : '"day_of_the_week" expected to be of type "string"';
        {
          day_of_the_week: converted,
        }
      ),
      withTime(value):: (
        local converted = value;
        assert std.isString(converted) : '"time" expected to be of type "string"';
        {
          time: converted,
        }
      ),
    },
    withAutoMerging(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_merging: value,
      }
    ),
    withExportingConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config: value,
      }
    ),
    withJobSchedule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_schedule: value,
      }
    ),
    withAutoMergingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_merging+: converted,
      }
    ),
    withExportingConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config+: converted,
      }
    ),
    withJobScheduleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_schedule+: converted,
      }
    ),
  },
  rule_based_matching:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withMaxAllowedRuleLevelForMatching(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_allowed_rule_level_for_matching" expected to be of type "number"';
      {
        max_allowed_rule_level_for_matching: converted,
      }
    ),
    withMaxAllowedRuleLevelForMerging(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_allowed_rule_level_for_merging" expected to be of type "number"';
      {
        max_allowed_rule_level_for_merging: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    attribute_types_selector:: {
      local block = self,
      new(attributeMatchingModel):: (
        {}
        + block.withAttributeMatchingModel(attributeMatchingModel)
      ),
      withAddress(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"address" expected to be of type "list"';
        {
          address: converted,
        }
      ),
      withAddressMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"address" expected to be of type "list"';
        {
          address+: converted,
        }
      ),
      withAttributeMatchingModel(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_matching_model" expected to be of type "string"';
        {
          attribute_matching_model: converted,
        }
      ),
      withEmailAddress(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"email_address" expected to be of type "list"';
        {
          email_address: converted,
        }
      ),
      withEmailAddressMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"email_address" expected to be of type "list"';
        {
          email_address+: converted,
        }
      ),
      withPhoneNumber(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"phone_number" expected to be of type "list"';
        {
          phone_number: converted,
        }
      ),
      withPhoneNumberMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"phone_number" expected to be of type "list"';
        {
          phone_number+: converted,
        }
      ),
    },
    conflict_resolution:: {
      local block = self,
      new(conflictResolvingModel):: (
        {}
        + block.withConflictResolvingModel(conflictResolvingModel)
      ),
      withConflictResolvingModel(value):: (
        local converted = value;
        assert std.isString(converted) : '"conflict_resolving_model" expected to be of type "string"';
        {
          conflict_resolving_model: converted,
        }
      ),
      withSourceName(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_name" expected to be of type "string"';
        {
          source_name: converted,
        }
      ),
    },
    exporting_config:: {
      local block = self,
      new():: (
        {}
      ),
      s3_exporting:: {
        local block = self,
        new(s3BucketName):: (
          {}
          + block.withS3BucketName(s3BucketName)
        ),
        withS3BucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
          {
            s3_bucket_name: converted,
          }
        ),
        withS3KeyName(value):: (
          local converted = value;
          assert std.isString(converted) : '"s3_key_name" expected to be of type "string"';
          {
            s3_key_name: converted,
          }
        ),
      },
      withS3Exporting(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting: value,
        }
      ),
      withS3ExportingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_exporting+: converted,
        }
      ),
    },
    matching_rules:: {
      local block = self,
      new(rule):: (
        {}
        + block.withRule(rule)
      ),
      withRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"rule" expected to be of type "list"';
        {
          rule: converted,
        }
      ),
      withRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"rule" expected to be of type "list"';
        {
          rule+: converted,
        }
      ),
    },
    withAttributeTypesSelector(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute_types_selector: value,
      }
    ),
    withConflictResolution(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conflict_resolution: value,
      }
    ),
    withExportingConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config: value,
      }
    ),
    withMatchingRules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        matching_rules: value,
      }
    ),
    withAttributeTypesSelectorMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute_types_selector+: converted,
      }
    ),
    withConflictResolutionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conflict_resolution+: converted,
      }
    ),
    withExportingConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exporting_config+: converted,
      }
    ),
    withMatchingRulesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        matching_rules+: converted,
      }
    ),
  },
  withMatching(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      matching: value,
    }
  ),
  withRuleBasedMatching(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_based_matching: value,
    }
  ),
  withMatchingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      matching+: converted,
    }
  ),
  withRuleBasedMatchingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_based_matching+: converted,
    }
  ),
}

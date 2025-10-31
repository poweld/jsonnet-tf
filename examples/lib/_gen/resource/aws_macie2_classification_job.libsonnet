{
  local block = self,
  new(terraformName, jobType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_macie2_classification_job",
          type:: "resource",
          attributes:: ["created_at", "custom_data_identifier_ids", "description", "id", "initial_run", "job_arn", "job_id", "job_status", "job_type", "name", "name_prefix", "region", "sampling_percentage", "tags", "tags_all", "user_paused_details"],
        },
      },
    }
    + block.withJobType(jobType)
  ),
  withCustomDataIdentifierIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_data_identifier_ids" expected to be of type "list"';
    {
      custom_data_identifier_ids: converted,
    }
  ),
  withCustomDataIdentifierIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_data_identifier_ids" expected to be of type "list"';
    {
      custom_data_identifier_ids+: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInitialRun(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"initial_run" expected to be of type "bool"';
    {
      initial_run: converted,
    }
  ),
  withJobStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_status" expected to be of type "string"';
    {
      job_status: converted,
    }
  ),
  withJobType(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_type" expected to be of type "string"';
    {
      job_type: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  withSamplingPercentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sampling_percentage" expected to be of type "number"';
    {
      sampling_percentage: converted,
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
  s3_job_definition:: {
    local block = self,
    new():: (
      {}
    ),
    bucket_criteria:: {
      local block = self,
      new():: (
        {}
      ),
      excludes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            withKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            withValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            withValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            withTagValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            withTagValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          withSimpleCriterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion: value,
            }
          ),
          withTagCriterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion: value,
            }
          ),
          withSimpleCriterionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion+: converted,
            }
          ),
          withTagCriterionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion+: converted,
            }
          ),
        },
        withAnd(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        withAndMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      includes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            withKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            withValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            withValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_criterion:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            withTagValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            withTagValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          withSimpleCriterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion: value,
            }
          ),
          withTagCriterion(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion: value,
            }
          ),
          withSimpleCriterionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_criterion+: converted,
            }
          ),
          withTagCriterionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_criterion+: converted,
            }
          ),
        },
        withAnd(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        withAndMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      withExcludes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes: value,
        }
      ),
      withIncludes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes: value,
        }
      ),
      withExcludesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes+: converted,
        }
      ),
      withIncludesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes+: converted,
        }
      ),
    },
    bucket_definitions:: {
      local block = self,
      new(accountId, buckets):: (
        {}
        + block.withAccountId(accountId)
        + block.withBuckets(buckets)
      ),
      withAccountId(value):: (
        local converted = value;
        assert std.isString(converted) : '"account_id" expected to be of type "string"';
        {
          account_id: converted,
        }
      ),
      withBuckets(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"buckets" expected to be of type "list"';
        {
          buckets: converted,
        }
      ),
      withBucketsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"buckets" expected to be of type "list"';
        {
          buckets+: converted,
        }
      ),
    },
    scoping:: {
      local block = self,
      new():: (
        {}
      ),
      excludes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            withKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            withValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            withValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            withKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            withTarget(value):: (
              local converted = value;
              assert std.isString(converted) : '"target" expected to be of type "string"';
              {
                target: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            withTagValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            withTagValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          withSimpleScopeTerm(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term: value,
            }
          ),
          withTagScopeTerm(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term: value,
            }
          ),
          withSimpleScopeTermMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term+: converted,
            }
          ),
          withTagScopeTermMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term+: converted,
            }
          ),
        },
        withAnd(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        withAndMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      includes:: {
        local block = self,
        new():: (
          {}
        ),
        and:: {
          local block = self,
          new():: (
            {}
          ),
          simple_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            withKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            withValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values: converted,
              }
            ),
            withValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"values" expected to be of type "list"';
              {
                values+: converted,
              }
            ),
          },
          tag_scope_term:: {
            local block = self,
            new():: (
              {}
            ),
            withComparator(value):: (
              local converted = value;
              assert std.isString(converted) : '"comparator" expected to be of type "string"';
              {
                comparator: converted,
              }
            ),
            withKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"key" expected to be of type "string"';
              {
                key: converted,
              }
            ),
            withTarget(value):: (
              local converted = value;
              assert std.isString(converted) : '"target" expected to be of type "string"';
              {
                target: converted,
              }
            ),
            tag_values:: {
              local block = self,
              new():: (
                {}
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
            withTagValues(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values: value,
              }
            ),
            withTagValuesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                tag_values+: converted,
              }
            ),
          },
          withSimpleScopeTerm(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term: value,
            }
          ),
          withTagScopeTerm(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term: value,
            }
          ),
          withSimpleScopeTermMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              simple_scope_term+: converted,
            }
          ),
          withTagScopeTermMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tag_scope_term+: converted,
            }
          ),
        },
        withAnd(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and: value,
          }
        ),
        withAndMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            and+: converted,
          }
        ),
      },
      withExcludes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes: value,
        }
      ),
      withIncludes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes: value,
        }
      ),
      withExcludesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          excludes+: converted,
        }
      ),
      withIncludesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          includes+: converted,
        }
      ),
    },
    withBucketCriteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_criteria: value,
      }
    ),
    withBucketDefinitions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_definitions: value,
      }
    ),
    withScoping(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scoping: value,
      }
    ),
    withBucketCriteriaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_criteria+: converted,
      }
    ),
    withBucketDefinitionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bucket_definitions+: converted,
      }
    ),
    withScopingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scoping+: converted,
      }
    ),
  },
  schedule_frequency:: {
    local block = self,
    new():: (
      {}
    ),
    withDailySchedule(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"daily_schedule" expected to be of type "bool"';
      {
        daily_schedule: converted,
      }
    ),
    withMonthlySchedule(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"monthly_schedule" expected to be of type "number"';
      {
        monthly_schedule: converted,
      }
    ),
    withWeeklySchedule(value):: (
      local converted = value;
      assert std.isString(converted) : '"weekly_schedule" expected to be of type "string"';
      {
        weekly_schedule: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withS3JobDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_job_definition: value,
    }
  ),
  withScheduleFrequency(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_frequency: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withS3JobDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_job_definition+: converted,
    }
  ),
  withScheduleFrequencyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_frequency+: converted,
    }
  ),
}

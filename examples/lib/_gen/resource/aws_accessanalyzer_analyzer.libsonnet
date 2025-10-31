{
  local block = self,
  new(terraformName, analyzerName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_accessanalyzer_analyzer",
          type:: "resource",
          attributes:: ["analyzer_name", "arn", "id", "region", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withAnalyzerName(analyzerName)
  ),
  withAnalyzerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"analyzer_name" expected to be of type "string"';
    {
      analyzer_name: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    internal_access:: {
      local block = self,
      new():: (
        {}
      ),
      analysis_rule:: {
        local block = self,
        new():: (
          {}
        ),
        inclusion:: {
          local block = self,
          new():: (
            {}
          ),
          withAccountIds(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids: converted,
            }
          ),
          withAccountIdsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids+: converted,
            }
          ),
          withResourceArns(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_arns" expected to be of type "list"';
            {
              resource_arns: converted,
            }
          ),
          withResourceArnsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_arns" expected to be of type "list"';
            {
              resource_arns+: converted,
            }
          ),
          withResourceTypes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
            {
              resource_types: converted,
            }
          ),
          withResourceTypesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_types" expected to be of type "list"';
            {
              resource_types+: converted,
            }
          ),
        },
        withInclusion(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inclusion: value,
          }
        ),
        withInclusionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inclusion+: converted,
          }
        ),
      },
      withAnalysisRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule: value,
        }
      ),
      withAnalysisRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule+: converted,
        }
      ),
    },
    unused_access:: {
      local block = self,
      new():: (
        {}
      ),
      withUnusedAccessAge(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"unused_access_age" expected to be of type "number"';
        {
          unused_access_age: converted,
        }
      ),
      analysis_rule:: {
        local block = self,
        new():: (
          {}
        ),
        exclusion:: {
          local block = self,
          new():: (
            {}
          ),
          withAccountIds(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids: converted,
            }
          ),
          withAccountIdsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"account_ids" expected to be of type "list"';
            {
              account_ids+: converted,
            }
          ),
          withResourceTags(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_tags" expected to be of type "list"';
            {
              resource_tags: converted,
            }
          ),
          withResourceTagsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"resource_tags" expected to be of type "list"';
            {
              resource_tags+: converted,
            }
          ),
        },
        withExclusion(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            exclusion: value,
          }
        ),
        withExclusionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            exclusion+: converted,
          }
        ),
      },
      withAnalysisRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule: value,
        }
      ),
      withAnalysisRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          analysis_rule+: converted,
        }
      ),
    },
    withInternalAccess(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        internal_access: value,
      }
    ),
    withUnusedAccess(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unused_access: value,
      }
    ),
    withInternalAccessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        internal_access+: converted,
      }
    ),
    withUnusedAccessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unused_access+: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}

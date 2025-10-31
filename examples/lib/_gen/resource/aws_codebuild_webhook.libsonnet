{
  local block = self,
  new(terraformName, projectName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codebuild_webhook",
          type:: "resource",
          attributes:: ["branch_filter", "build_type", "id", "manual_creation", "payload_url", "project_name", "region", "secret", "url"],
        },
      },
    }
    + block.withProjectName(projectName)
  ),
  withBranchFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"branch_filter" expected to be of type "string"';
    {
      branch_filter: converted,
    }
  ),
  withBuildType(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_type" expected to be of type "string"';
    {
      build_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withManualCreation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manual_creation" expected to be of type "bool"';
    {
      manual_creation: converted,
    }
  ),
  withProjectName(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_name" expected to be of type "string"';
    {
      project_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filter_group:: {
    local block = self,
    new():: (
      {}
    ),
    filter:: {
      local block = self,
      new(pattern, type):: (
        {}
        + block.withPattern(pattern)
        + block.withType(type)
      ),
      withExcludeMatchedPattern(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"exclude_matched_pattern" expected to be of type "bool"';
        {
          exclude_matched_pattern: converted,
        }
      ),
      withPattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  pull_request_build_policy:: {
    local block = self,
    new(requiresCommentApproval):: (
      {}
      + block.withRequiresCommentApproval(requiresCommentApproval)
    ),
    withApproverRoles(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"approver_roles" expected to be of type "set"';
      {
        approver_roles: converted,
      }
    ),
    withApproverRolesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"approver_roles" expected to be of type "set"';
      {
        approver_roles+: converted,
      }
    ),
    withRequiresCommentApproval(value):: (
      local converted = value;
      assert std.isString(converted) : '"requires_comment_approval" expected to be of type "string"';
      {
        requires_comment_approval: converted,
      }
    ),
  },
  scope_configuration:: {
    local block = self,
    new(name, scope):: (
      {}
      + block.withName(name)
      + block.withScope(scope)
    ),
    withDomain(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain" expected to be of type "string"';
      {
        domain: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withScope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
  },
  withFilterGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_group: value,
    }
  ),
  withPullRequestBuildPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pull_request_build_policy: value,
    }
  ),
  withScopeConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope_configuration: value,
    }
  ),
  withFilterGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_group+: converted,
    }
  ),
  withPullRequestBuildPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pull_request_build_policy+: converted,
    }
  ),
  withScopeConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope_configuration+: converted,
    }
  ),
}

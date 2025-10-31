{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_amplify_app",
          type:: "resource",
          attributes:: ["access_token", "arn", "auto_branch_creation_patterns", "basic_auth_credentials", "build_spec", "compute_role_arn", "custom_headers", "default_domain", "description", "enable_auto_branch_creation", "enable_basic_auth", "enable_branch_auto_build", "enable_branch_auto_deletion", "environment_variables", "iam_service_role_arn", "id", "name", "oauth_token", "platform", "production_branch", "region", "repository", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withAccessToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_token" expected to be of type "string"';
    {
      access_token: converted,
    }
  ),
  withAutoBranchCreationPatterns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_branch_creation_patterns" expected to be of type "set"';
    {
      auto_branch_creation_patterns: converted,
    }
  ),
  withAutoBranchCreationPatternsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_branch_creation_patterns" expected to be of type "set"';
    {
      auto_branch_creation_patterns+: converted,
    }
  ),
  withBasicAuthCredentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"basic_auth_credentials" expected to be of type "string"';
    {
      basic_auth_credentials: converted,
    }
  ),
  withBuildSpec(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_spec" expected to be of type "string"';
    {
      build_spec: converted,
    }
  ),
  withComputeRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_role_arn" expected to be of type "string"';
    {
      compute_role_arn: converted,
    }
  ),
  withCustomHeaders(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_headers" expected to be of type "string"';
    {
      custom_headers: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnableAutoBranchCreation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_auto_branch_creation" expected to be of type "bool"';
    {
      enable_auto_branch_creation: converted,
    }
  ),
  withEnableBasicAuth(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_basic_auth" expected to be of type "bool"';
    {
      enable_basic_auth: converted,
    }
  ),
  withEnableBranchAutoBuild(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_branch_auto_build" expected to be of type "bool"';
    {
      enable_branch_auto_build: converted,
    }
  ),
  withEnableBranchAutoDeletion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_branch_auto_deletion" expected to be of type "bool"';
    {
      enable_branch_auto_deletion: converted,
    }
  ),
  withEnvironmentVariables(value):: (
    local converted = value;
    assert std.isObject(converted) : '"environment_variables" expected to be of type "map"';
    {
      environment_variables: converted,
    }
  ),
  withIamServiceRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_service_role_arn" expected to be of type "string"';
    {
      iam_service_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOauthToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"oauth_token" expected to be of type "string"';
    {
      oauth_token: converted,
    }
  ),
  withPlatform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
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
  withRepository(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository" expected to be of type "string"';
    {
      repository: converted,
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
  auto_branch_creation_config:: {
    local block = self,
    new():: (
      {}
    ),
    withBasicAuthCredentials(value):: (
      local converted = value;
      assert std.isString(converted) : '"basic_auth_credentials" expected to be of type "string"';
      {
        basic_auth_credentials: converted,
      }
    ),
    withBuildSpec(value):: (
      local converted = value;
      assert std.isString(converted) : '"build_spec" expected to be of type "string"';
      {
        build_spec: converted,
      }
    ),
    withEnableAutoBuild(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_auto_build" expected to be of type "bool"';
      {
        enable_auto_build: converted,
      }
    ),
    withEnableBasicAuth(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_basic_auth" expected to be of type "bool"';
      {
        enable_basic_auth: converted,
      }
    ),
    withEnablePerformanceMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_performance_mode" expected to be of type "bool"';
      {
        enable_performance_mode: converted,
      }
    ),
    withEnablePullRequestPreview(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_pull_request_preview" expected to be of type "bool"';
      {
        enable_pull_request_preview: converted,
      }
    ),
    withEnvironmentVariables(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment_variables" expected to be of type "map"';
      {
        environment_variables: converted,
      }
    ),
    withFramework(value):: (
      local converted = value;
      assert std.isString(converted) : '"framework" expected to be of type "string"';
      {
        framework: converted,
      }
    ),
    withPullRequestEnvironmentName(value):: (
      local converted = value;
      assert std.isString(converted) : '"pull_request_environment_name" expected to be of type "string"';
      {
        pull_request_environment_name: converted,
      }
    ),
    withStage(value):: (
      local converted = value;
      assert std.isString(converted) : '"stage" expected to be of type "string"';
      {
        stage: converted,
      }
    ),
  },
  cache_config:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  custom_rule:: {
    local block = self,
    new(source, target):: (
      {}
      + block.withSource(source)
      + block.withTarget(target)
    ),
    withCondition(value):: (
      local converted = value;
      assert std.isString(converted) : '"condition" expected to be of type "string"';
      {
        condition: converted,
      }
    ),
    withSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    withTarget(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
  },
  job_config:: {
    local block = self,
    new():: (
      {}
    ),
    withBuildComputeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"build_compute_type" expected to be of type "string"';
      {
        build_compute_type: converted,
      }
    ),
  },
  withAutoBranchCreationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_branch_creation_config: value,
    }
  ),
  withCacheConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_config: value,
    }
  ),
  withCustomRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_rule: value,
    }
  ),
  withJobConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_config: value,
    }
  ),
  withAutoBranchCreationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_branch_creation_config+: converted,
    }
  ),
  withCacheConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_config+: converted,
    }
  ),
  withCustomRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_rule+: converted,
    }
  ),
  withJobConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_config+: converted,
    }
  ),
}

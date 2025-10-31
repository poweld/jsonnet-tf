{
  local block = self,
  new(terraformName, appId, branchName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_amplify_branch",
          type:: "resource",
          attributes:: ["app_id", "arn", "associated_resources", "backend_environment_arn", "basic_auth_credentials", "branch_name", "custom_domains", "description", "destination_branch", "display_name", "enable_auto_build", "enable_basic_auth", "enable_notification", "enable_performance_mode", "enable_pull_request_preview", "enable_skew_protection", "environment_variables", "framework", "id", "pull_request_environment_name", "region", "source_branch", "stage", "tags", "tags_all", "ttl"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withBranchName(branchName)
  ),
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  withBackendEnvironmentArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"backend_environment_arn" expected to be of type "string"';
    {
      backend_environment_arn: converted,
    }
  ),
  withBasicAuthCredentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"basic_auth_credentials" expected to be of type "string"';
    {
      basic_auth_credentials: converted,
    }
  ),
  withBranchName(value):: (
    local converted = value;
    assert std.isString(converted) : '"branch_name" expected to be of type "string"';
    {
      branch_name: converted,
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
  withEnableNotification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_notification" expected to be of type "bool"';
    {
      enable_notification: converted,
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
  withEnableSkewProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_skew_protection" expected to be of type "bool"';
    {
      enable_skew_protection: converted,
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPullRequestEnvironmentName(value):: (
    local converted = value;
    assert std.isString(converted) : '"pull_request_environment_name" expected to be of type "string"';
    {
      pull_request_environment_name: converted,
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
  withStage(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage" expected to be of type "string"';
    {
      stage: converted,
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
  withTtl(value):: (
    local converted = value;
    assert std.isString(converted) : '"ttl" expected to be of type "string"';
    {
      ttl: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

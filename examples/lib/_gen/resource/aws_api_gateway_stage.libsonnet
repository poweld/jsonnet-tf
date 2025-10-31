{
  local block = self,
  new(terraformName, deploymentId, restApiId, stageName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_stage",
          type:: "resource",
          attributes:: ["arn", "cache_cluster_enabled", "cache_cluster_size", "client_certificate_id", "deployment_id", "description", "documentation_version", "execution_arn", "id", "invoke_url", "region", "rest_api_id", "stage_name", "tags", "tags_all", "variables", "web_acl_arn", "xray_tracing_enabled"],
        },
      },
    }
    + block.withDeploymentId(deploymentId)
    + block.withRestApiId(restApiId)
    + block.withStageName(stageName)
  ),
  withCacheClusterEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cache_cluster_enabled" expected to be of type "bool"';
    {
      cache_cluster_enabled: converted,
    }
  ),
  withCacheClusterSize(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_cluster_size" expected to be of type "string"';
    {
      cache_cluster_size: converted,
    }
  ),
  withClientCertificateId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_certificate_id" expected to be of type "string"';
    {
      client_certificate_id: converted,
    }
  ),
  withDeploymentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_id" expected to be of type "string"';
    {
      deployment_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDocumentationVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"documentation_version" expected to be of type "string"';
    {
      documentation_version: converted,
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
  withRestApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  withStageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
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
  withVariables(value):: (
    local converted = value;
    assert std.isObject(converted) : '"variables" expected to be of type "map"';
    {
      variables: converted,
    }
  ),
  withXrayTracingEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"xray_tracing_enabled" expected to be of type "bool"';
    {
      xray_tracing_enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  access_log_settings:: {
    local block = self,
    new(destinationArn, format):: (
      {}
      + block.withDestinationArn(destinationArn)
      + block.withFormat(format)
    ),
    withDestinationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    withFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
  },
  canary_settings:: {
    local block = self,
    new(deploymentId):: (
      {}
      + block.withDeploymentId(deploymentId)
    ),
    withDeploymentId(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_id" expected to be of type "string"';
      {
        deployment_id: converted,
      }
    ),
    withPercentTraffic(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"percent_traffic" expected to be of type "number"';
      {
        percent_traffic: converted,
      }
    ),
    withStageVariableOverrides(value):: (
      local converted = value;
      assert std.isObject(converted) : '"stage_variable_overrides" expected to be of type "map"';
      {
        stage_variable_overrides: converted,
      }
    ),
    withUseStageCache(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_stage_cache" expected to be of type "bool"';
      {
        use_stage_cache: converted,
      }
    ),
  },
  withAccessLogSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings: value,
    }
  ),
  withCanarySettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      canary_settings: value,
    }
  ),
  withAccessLogSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings+: converted,
    }
  ),
  withCanarySettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      canary_settings+: converted,
    }
  ),
}

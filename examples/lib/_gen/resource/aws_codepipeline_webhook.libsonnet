{
  local block = self,
  new(terraformName, authentication, name, targetAction, targetPipeline):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codepipeline_webhook",
          type:: "resource",
          attributes:: ["arn", "authentication", "id", "name", "region", "tags", "tags_all", "target_action", "target_pipeline", "url"],
        },
      },
    }
    + block.withAuthentication(authentication)
    + block.withName(name)
    + block.withTargetAction(targetAction)
    + block.withTargetPipeline(targetPipeline)
  ),
  withAuthentication(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication" expected to be of type "string"';
    {
      authentication: converted,
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
  withTargetAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_action" expected to be of type "string"';
    {
      target_action: converted,
    }
  ),
  withTargetPipeline(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_pipeline" expected to be of type "string"';
    {
      target_pipeline: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  authentication_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowedIpRange(value):: (
      local converted = value;
      assert std.isString(converted) : '"allowed_ip_range" expected to be of type "string"';
      {
        allowed_ip_range: converted,
      }
    ),
    withSecretToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_token" expected to be of type "string"';
      {
        secret_token: converted,
      }
    ),
  },
  filter:: {
    local block = self,
    new(jsonPath, matchEquals):: (
      {}
      + block.withJsonPath(jsonPath)
      + block.withMatchEquals(matchEquals)
    ),
    withJsonPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"json_path" expected to be of type "string"';
      {
        json_path: converted,
      }
    ),
    withMatchEquals(value):: (
      local converted = value;
      assert std.isString(converted) : '"match_equals" expected to be of type "string"';
      {
        match_equals: converted,
      }
    ),
  },
  withAuthenticationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_configuration: value,
    }
  ),
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withAuthenticationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_configuration+: converted,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, appName, appType, domainId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_app",
          type:: "resource",
          attributes:: ["app_name", "app_type", "arn", "domain_id", "id", "region", "space_name", "tags", "tags_all", "user_profile_name"],
        },
      },
    }
    + block.withAppName(appName)
    + block.withAppType(appType)
    + block.withDomainId(domainId)
  ),
  withAppName(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_name" expected to be of type "string"';
    {
      app_name: converted,
    }
  ),
  withAppType(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_type" expected to be of type "string"';
    {
      app_type: converted,
    }
  ),
  withDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
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
  withSpaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_name" expected to be of type "string"';
    {
      space_name: converted,
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
  withUserProfileName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_profile_name" expected to be of type "string"';
    {
      user_profile_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  resource_spec:: {
    local block = self,
    new():: (
      {}
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withLifecycleConfigArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"lifecycle_config_arn" expected to be of type "string"';
      {
        lifecycle_config_arn: converted,
      }
    ),
    withSagemakerImageArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker_image_arn" expected to be of type "string"';
      {
        sagemaker_image_arn: converted,
      }
    ),
    withSagemakerImageVersionAlias(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker_image_version_alias" expected to be of type "string"';
      {
        sagemaker_image_version_alias: converted,
      }
    ),
    withSagemakerImageVersionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker_image_version_arn" expected to be of type "string"';
      {
        sagemaker_image_version_arn: converted,
      }
    ),
  },
  withResourceSpec(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_spec: value,
    }
  ),
  withResourceSpecMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_spec+: converted,
    }
  ),
}

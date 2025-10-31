{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_object_lambda_access_point",
          type:: "resource",
          attributes:: ["account_id", "alias", "arn", "id", "name", "region"],
        },
      },
    }
    + block.withName(name)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new(supportingAccessPoint):: (
      {}
      + block.withSupportingAccessPoint(supportingAccessPoint)
    ),
    withAllowedFeatures(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_features" expected to be of type "set"';
      {
        allowed_features: converted,
      }
    ),
    withAllowedFeaturesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_features" expected to be of type "set"';
      {
        allowed_features+: converted,
      }
    ),
    withCloudWatchMetricsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"cloud_watch_metrics_enabled" expected to be of type "bool"';
      {
        cloud_watch_metrics_enabled: converted,
      }
    ),
    withSupportingAccessPoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"supporting_access_point" expected to be of type "string"';
      {
        supporting_access_point: converted,
      }
    ),
    transformation_configuration:: {
      local block = self,
      new(actions):: (
        {}
        + block.withActions(actions)
      ),
      withActions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
        {
          actions: converted,
        }
      ),
      withActionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
        {
          actions+: converted,
        }
      ),
      content_transformation:: {
        local block = self,
        new():: (
          {}
        ),
        aws_lambda:: {
          local block = self,
          new(functionArn):: (
            {}
            + block.withFunctionArn(functionArn)
          ),
          withFunctionArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"function_arn" expected to be of type "string"';
            {
              function_arn: converted,
            }
          ),
          withFunctionPayload(value):: (
            local converted = value;
            assert std.isString(converted) : '"function_payload" expected to be of type "string"';
            {
              function_payload: converted,
            }
          ),
        },
        withAwsLambda(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_lambda: value,
          }
        ),
        withAwsLambdaMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_lambda+: converted,
          }
        ),
      },
      withContentTransformation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          content_transformation: value,
        }
      ),
      withContentTransformationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          content_transformation+: converted,
        }
      ),
    },
    withTransformationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transformation_configuration: value,
      }
    ),
    withTransformationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        transformation_configuration+: converted,
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

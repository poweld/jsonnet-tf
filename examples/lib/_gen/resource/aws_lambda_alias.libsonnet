{
  local block = self,
  new(terraformName, functionName, functionVersion, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_alias",
          type:: "resource",
          attributes:: ["arn", "description", "function_name", "function_version", "id", "invoke_arn", "name", "region"],
        },
      },
    }
    + block.withFunctionName(functionName)
    + block.withFunctionVersion(functionVersion)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withFunctionVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_version" expected to be of type "string"';
    {
      function_version: converted,
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
  routing_config:: {
    local block = self,
    new():: (
      {}
    ),
    withAdditionalVersionWeights(value):: (
      local converted = value;
      assert std.isObject(converted) : '"additional_version_weights" expected to be of type "map"';
      {
        additional_version_weights: converted,
      }
    ),
  },
  withRoutingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config: value,
    }
  ),
  withRoutingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config+: converted,
    }
  ),
}

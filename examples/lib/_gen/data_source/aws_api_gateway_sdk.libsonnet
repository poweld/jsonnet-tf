{
  local block = self,
  new(terraformName, restApiId, sdkType, stageName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_sdk",
          type:: "data",
          attributes:: ["body", "content_disposition", "content_type", "id", "parameters", "region", "rest_api_id", "sdk_type", "stage_name"],
        },
      },
    }
    + block.withRestApiId(restApiId)
    + block.withSdkType(sdkType)
    + block.withStageName(stageName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  withSdkType(value):: (
    local converted = value;
    assert std.isString(converted) : '"sdk_type" expected to be of type "string"';
    {
      sdk_type: converted,
    }
  ),
  withStageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
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

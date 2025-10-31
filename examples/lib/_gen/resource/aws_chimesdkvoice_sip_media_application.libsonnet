{
  local block = self,
  new(terraformName, awsRegion, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chimesdkvoice_sip_media_application",
          type:: "resource",
          attributes:: ["arn", "aws_region", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAwsRegion(awsRegion)
    + block.withName(name)
  ),
  withAwsRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_region" expected to be of type "string"';
    {
      aws_region: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  endpoints:: {
    local block = self,
    new(lambdaArn):: (
      {}
      + block.withLambdaArn(lambdaArn)
    ),
    withLambdaArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
      {
        lambda_arn: converted,
      }
    ),
  },
  withEndpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoints: value,
    }
  ),
  withEndpointsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoints+: converted,
    }
  ),
}

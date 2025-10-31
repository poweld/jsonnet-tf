{
  local block = self,
  new(terraformName, identifier, typeName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudcontrolapi_resource",
          type:: "data",
          attributes:: ["id", "identifier", "properties", "region", "role_arn", "type_name", "type_version_id"],
        },
      },
    }
    + block.withIdentifier(identifier)
    + block.withTypeName(typeName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"identifier" expected to be of type "string"';
    {
      identifier: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withTypeName(value):: (
    local converted = value;
    assert std.isString(converted) : '"type_name" expected to be of type "string"';
    {
      type_name: converted,
    }
  ),
  withTypeVersionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"type_version_id" expected to be of type "string"';
    {
      type_version_id: converted,
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

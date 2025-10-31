{
  local block = self,
  new(terraformName, parentId, pathPart, restApiId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_resource",
          type:: "resource",
          attributes:: ["id", "parent_id", "path", "path_part", "region", "rest_api_id"],
        },
      },
    }
    + block.withParentId(parentId)
    + block.withPathPart(pathPart)
    + block.withRestApiId(restApiId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withParentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_id" expected to be of type "string"';
    {
      parent_id: converted,
    }
  ),
  withPathPart(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_part" expected to be of type "string"';
    {
      path_part: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

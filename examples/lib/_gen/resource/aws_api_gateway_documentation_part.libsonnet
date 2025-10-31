{
  local block = self,
  new(terraformName, properties, restApiId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_documentation_part",
          type:: "resource",
          attributes:: ["documentation_part_id", "id", "properties", "region", "rest_api_id"],
        },
      },
    }
    + block.withProperties(properties)
    + block.withRestApiId(restApiId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProperties(value):: (
    local converted = value;
    assert std.isString(converted) : '"properties" expected to be of type "string"';
    {
      properties: converted,
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
  location:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withMethod(value):: (
      local converted = value;
      assert std.isString(converted) : '"method" expected to be of type "string"';
      {
        method: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withStatusCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_code" expected to be of type "string"';
      {
        status_code: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location: value,
    }
  ),
  withLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location+: converted,
    }
  ),
}

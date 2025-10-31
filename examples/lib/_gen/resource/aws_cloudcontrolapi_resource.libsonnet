{
  local block = self,
  new(terraformName, desiredState, typeName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudcontrolapi_resource",
          type:: "resource",
          attributes:: ["desired_state", "id", "properties", "region", "role_arn", "schema", "type_name", "type_version_id"],
        },
      },
    }
    + block.withDesiredState(desiredState)
    + block.withTypeName(typeName)
  ),
  withDesiredState(value):: (
    local converted = value;
    assert std.isString(converted) : '"desired_state" expected to be of type "string"';
    {
      desired_state: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withSchema(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema" expected to be of type "string"';
    {
      schema: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

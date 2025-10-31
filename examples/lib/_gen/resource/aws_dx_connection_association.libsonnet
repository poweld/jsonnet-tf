{
  local block = self,
  new(terraformName, connectionId, lagId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_connection_association",
          type:: "resource",
          attributes:: ["connection_id", "id", "lag_id", "region"],
        },
      },
    }
    + block.withConnectionId(connectionId)
    + block.withLagId(lagId)
  ),
  withConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLagId(value):: (
    local converted = value;
    assert std.isString(converted) : '"lag_id" expected to be of type "string"';
    {
      lag_id: converted,
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
}

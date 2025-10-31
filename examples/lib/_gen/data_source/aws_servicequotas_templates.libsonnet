{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicequotas_templates",
          type:: "data",
          attributes:: ["aws_region", "id", "region", "templates"],
        },
      },
    }
  ),
  withAwsRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_region" expected to be of type "string"';
    {
      aws_region: converted,
    }
  ),
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

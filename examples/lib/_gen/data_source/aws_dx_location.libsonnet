{
  local block = self,
  new(terraformName, locationCode):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_location",
          type:: "data",
          attributes:: ["available_macsec_port_speeds", "available_port_speeds", "available_providers", "id", "location_code", "location_name", "region"],
        },
      },
    }
    + block.withLocationCode(locationCode)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLocationCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_code" expected to be of type "string"';
    {
      location_code: converted,
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

{
  local block = self,
  new(terraformName, principal, thing):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_thing_principal_attachment",
          type:: "resource",
          attributes:: ["id", "principal", "region", "thing", "thing_principal_type"],
        },
      },
    }
    + block.withPrincipal(principal)
    + block.withThing(thing)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  withThing(value):: (
    local converted = value;
    assert std.isString(converted) : '"thing" expected to be of type "string"';
    {
      thing: converted,
    }
  ),
  withThingPrincipalType(value):: (
    local converted = value;
    assert std.isString(converted) : '"thing_principal_type" expected to be of type "string"';
    {
      thing_principal_type: converted,
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

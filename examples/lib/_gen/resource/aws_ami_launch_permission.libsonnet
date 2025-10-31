{
  local block = self,
  new(terraformName, imageId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ami_launch_permission",
          type:: "resource",
          attributes:: ["account_id", "group", "id", "image_id", "organization_arn", "organizational_unit_arn", "region"],
        },
      },
    }
    + block.withImageId(imageId)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"group" expected to be of type "string"';
    {
      group: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageId(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  withOrganizationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization_arn" expected to be of type "string"';
    {
      organization_arn: converted,
    }
  ),
  withOrganizationalUnitArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"organizational_unit_arn" expected to be of type "string"';
    {
      organizational_unit_arn: converted,
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

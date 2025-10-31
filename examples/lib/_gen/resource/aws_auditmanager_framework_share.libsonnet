{
  local block = self,
  new(terraformName, destinationAccount, destinationRegion, frameworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_auditmanager_framework_share",
          type:: "resource",
          attributes:: ["comment", "destination_account", "destination_region", "framework_id", "id", "region", "status"],
        },
      },
    }
    + block.withDestinationAccount(destinationAccount)
    + block.withDestinationRegion(destinationRegion)
    + block.withFrameworkId(frameworkId)
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withDestinationAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_account" expected to be of type "string"';
    {
      destination_account: converted,
    }
  ),
  withDestinationRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_region" expected to be of type "string"';
    {
      destination_region: converted,
    }
  ),
  withFrameworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"framework_id" expected to be of type "string"';
    {
      framework_id: converted,
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

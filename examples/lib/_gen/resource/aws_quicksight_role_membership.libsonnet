{
  local block = self,
  new(terraformName, memberName, role):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_role_membership",
          type:: "resource",
          attributes:: ["aws_account_id", "member_name", "namespace", "region", "role"],
        },
      },
    }
    + block.withMemberName(memberName)
    + block.withRole(role)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withMemberName(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_name" expected to be of type "string"';
    {
      member_name: converted,
    }
  ),
  withNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
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
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
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

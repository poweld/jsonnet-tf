{
  local block = self,
  new(terraformName, folderId, memberId, memberType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_folder_membership",
          type:: "resource",
          attributes:: ["aws_account_id", "folder_id", "id", "member_id", "member_type", "region"],
        },
      },
    }
    + block.withFolderId(folderId)
    + block.withMemberId(memberId)
    + block.withMemberType(memberType)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withFolderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"folder_id" expected to be of type "string"';
    {
      folder_id: converted,
    }
  ),
  withMemberId(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_id" expected to be of type "string"';
    {
      member_id: converted,
    }
  ),
  withMemberType(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_type" expected to be of type "string"';
    {
      member_type: converted,
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

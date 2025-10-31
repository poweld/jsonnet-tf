{
  local block = self,
  new(terraformName, email, identityType, userRole):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_user",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "email", "iam_arn", "id", "identity_type", "namespace", "region", "session_name", "user_invitation_url", "user_name", "user_role"],
        },
      },
    }
    + block.withEmail(email)
    + block.withIdentityType(identityType)
    + block.withUserRole(userRole)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  withIamArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_arn" expected to be of type "string"';
    {
      iam_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_type" expected to be of type "string"';
    {
      identity_type: converted,
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
  withSessionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_name" expected to be of type "string"';
    {
      session_name: converted,
    }
  ),
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  withUserRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_role" expected to be of type "string"';
    {
      user_role: converted,
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

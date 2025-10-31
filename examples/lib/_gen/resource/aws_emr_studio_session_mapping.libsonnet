{
  local block = self,
  new(terraformName, identityType, sessionPolicyArn, studioId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_studio_session_mapping",
          type:: "resource",
          attributes:: ["id", "identity_id", "identity_name", "identity_type", "region", "session_policy_arn", "studio_id"],
        },
      },
    }
    + block.withIdentityType(identityType)
    + block.withSessionPolicyArn(sessionPolicyArn)
    + block.withStudioId(studioId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityId(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_id" expected to be of type "string"';
    {
      identity_id: converted,
    }
  ),
  withIdentityName(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_name" expected to be of type "string"';
    {
      identity_name: converted,
    }
  ),
  withIdentityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_type" expected to be of type "string"';
    {
      identity_type: converted,
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
  withSessionPolicyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_policy_arn" expected to be of type "string"';
    {
      session_policy_arn: converted,
    }
  ),
  withStudioId(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_id" expected to be of type "string"';
    {
      studio_id: converted,
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

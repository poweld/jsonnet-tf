{
  local block = self,

  new(terraformName, userId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_user_security_questions",
          type:: "data",
          attributes:: ["id", "questions", "user_id"],
        },
      },
    }
    + block.withUserId(userId)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withUserId":: "ID of a Okta User",
  withUserId(value):: (
    assert std.isString(value) : '"user_id" expected to be of type "string"';

    {
      user_id: value,
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

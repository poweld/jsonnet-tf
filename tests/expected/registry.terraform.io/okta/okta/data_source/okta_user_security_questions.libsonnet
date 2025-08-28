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
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withUserId":: "ID of a Okta User",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}

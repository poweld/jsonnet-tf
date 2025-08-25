{
  local block = self,
  new(name, user_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_user_security_questions",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["id", "questions", "user_id"],
      },
    }
    + block.withUserId(user_id)
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

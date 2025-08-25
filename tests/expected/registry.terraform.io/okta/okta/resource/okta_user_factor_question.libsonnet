{
  local block = self,
  new(name, answer, key, user_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_user_factor_question",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["answer", "id", "key", "status", "text", "user_id"],
      },
    }
    + block.withAnswer(answer)
    + block.withKey(key)
    + block.withUserId(user_id)
  ),
  "#withAnswer":: "Security question answer. Note here that answer won't be set during the resource import.",
  withAnswer(value):: (
    local converted = value;
    assert std.isString(converted) : '"answer" expected to be of type "string"';
    {
      answer: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "Security question unique key. ",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withUserId":: "ID of the user. Resource will be recreated when `user_id` changes.",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}

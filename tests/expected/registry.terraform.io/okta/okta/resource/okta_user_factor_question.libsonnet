{
  local block = self,

  new(terraformName, answer, key, userId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_user_factor_question",
          type:: "resource",
          attributes:: ["answer", "id", "key", "status", "text", "user_id"],
        },
      },
    }
    + block.withAnswer(answer)
    + block.withKey(key)
    + block.withUserId(userId)
  ),

  "#withAnswer":: "Security question answer. Note here that answer won't be set during the resource import.",
  withAnswer(value):: (
    assert std.isString(value) : '"answer" expected to be of type "string"';

    {
      answer: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withKey":: "Security question unique key. ",
  withKey(value):: (
    assert std.isString(value) : '"key" expected to be of type "string"';

    {
      key: value,
    }
  ),

  "#withUserId":: "ID of the user. Resource will be recreated when `user_id` changes.",
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

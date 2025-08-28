{
  local block = self,
  new(terraformName, senderId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_sender_verification",
          type:: "resource",
          attributes:: ["id", "sender_id"],
        },
      },
    }
    + block.withSenderId(senderId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withSenderId":: "Email sender ID",
  withSenderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"sender_id" expected to be of type "string"';
    {
      sender_id: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, senderId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_sender_verification",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["id", "sender_id"],
      },
    }
    + block.withTerraformName(terraformName)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}

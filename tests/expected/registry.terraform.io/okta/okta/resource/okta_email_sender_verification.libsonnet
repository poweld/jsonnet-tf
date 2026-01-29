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
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withSenderId":: "Email sender ID",
  withSenderId(value):: (
    assert std.isString(value) : '"sender_id" expected to be of type "string"';

    {
      sender_id: value,
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

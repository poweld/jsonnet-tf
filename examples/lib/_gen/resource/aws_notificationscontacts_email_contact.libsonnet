{
  local block = self,
  new(terraformName, emailAddress, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_notificationscontacts_email_contact",
          type:: "resource",
          attributes:: ["arn", "email_address", "name", "tags", "tags_all"],
        },
      },
    }
    + block.withEmailAddress(emailAddress)
    + block.withName(name)
  ),
  withEmailAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_address" expected to be of type "string"';
    {
      email_address: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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

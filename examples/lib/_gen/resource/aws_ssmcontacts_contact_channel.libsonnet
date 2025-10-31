{
  local block = self,
  new(terraformName, contactId, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssmcontacts_contact_channel",
          type:: "resource",
          attributes:: ["activation_status", "arn", "contact_id", "id", "name", "region", "type"],
        },
      },
    }
    + block.withContactId(contactId)
    + block.withName(name)
    + block.withType(type)
  ),
  withContactId(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_id" expected to be of type "string"';
    {
      contact_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  delivery_address:: {
    local block = self,
    new(simpleAddress):: (
      {}
      + block.withSimpleAddress(simpleAddress)
    ),
    withSimpleAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"simple_address" expected to be of type "string"';
      {
        simple_address: converted,
      }
    ),
  },
  withDeliveryAddress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_address: value,
    }
  ),
  withDeliveryAddressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delivery_address+: converted,
    }
  ),
}

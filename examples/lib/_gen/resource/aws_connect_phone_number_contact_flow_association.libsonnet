{
  local block = self,
  new(terraformName, contactFlowId, instanceId, phoneNumberId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_phone_number_contact_flow_association",
          type:: "resource",
          attributes:: ["contact_flow_id", "instance_id", "phone_number_id", "region"],
        },
      },
    }
    + block.withContactFlowId(contactFlowId)
    + block.withInstanceId(instanceId)
    + block.withPhoneNumberId(phoneNumberId)
  ),
  withContactFlowId(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_flow_id" expected to be of type "string"';
    {
      contact_flow_id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  withPhoneNumberId(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number_id" expected to be of type "string"';
    {
      phone_number_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

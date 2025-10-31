{
  local block = self,
  new(terraformName, attachmentId, attachmentType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_attachment_accepter",
          type:: "resource",
          attributes:: ["attachment_id", "attachment_policy_rule_number", "attachment_type", "core_network_arn", "core_network_id", "edge_location", "edge_locations", "id", "owner_account_id", "resource_arn", "segment_name", "state"],
        },
      },
    }
    + block.withAttachmentId(attachmentId)
    + block.withAttachmentType(attachmentType)
  ),
  withAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"attachment_id" expected to be of type "string"';
    {
      attachment_id: converted,
    }
  ),
  withAttachmentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"attachment_type" expected to be of type "string"';
    {
      attachment_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

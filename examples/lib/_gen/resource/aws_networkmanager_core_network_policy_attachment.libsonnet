{
  local block = self,
  new(terraformName, coreNetworkId, policyDocument):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_core_network_policy_attachment",
          type:: "resource",
          attributes:: ["core_network_id", "id", "policy_document", "state"],
        },
      },
    }
    + block.withCoreNetworkId(coreNetworkId)
    + block.withPolicyDocument(policyDocument)
  ),
  withCoreNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicyDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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

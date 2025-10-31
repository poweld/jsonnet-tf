{
  local block = self,
  new(terraformName, associatedGatewayId, dxGatewayId, dxGatewayOwnerAccountId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_gateway_association_proposal",
          type:: "resource",
          attributes:: ["allowed_prefixes", "associated_gateway_id", "associated_gateway_owner_account_id", "associated_gateway_type", "dx_gateway_id", "dx_gateway_owner_account_id", "id", "region"],
        },
      },
    }
    + block.withAssociatedGatewayId(associatedGatewayId)
    + block.withDxGatewayId(dxGatewayId)
    + block.withDxGatewayOwnerAccountId(dxGatewayOwnerAccountId)
  ),
  withAllowedPrefixes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_prefixes" expected to be of type "set"';
    {
      allowed_prefixes: converted,
    }
  ),
  withAllowedPrefixesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_prefixes" expected to be of type "set"';
    {
      allowed_prefixes+: converted,
    }
  ),
  withAssociatedGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_gateway_id" expected to be of type "string"';
    {
      associated_gateway_id: converted,
    }
  ),
  withDxGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"dx_gateway_id" expected to be of type "string"';
    {
      dx_gateway_id: converted,
    }
  ),
  withDxGatewayOwnerAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"dx_gateway_owner_account_id" expected to be of type "string"';
    {
      dx_gateway_owner_account_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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

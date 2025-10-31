{
  local block = self,
  new(terraformName, amazonSideAsn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dx_gateway",
          type:: "resource",
          attributes:: ["amazon_side_asn", "arn", "id", "name", "owner_account_id"],
        },
      },
    }
    + block.withAmazonSideAsn(amazonSideAsn)
    + block.withName(name)
  ),
  withAmazonSideAsn(value):: (
    local converted = value;
    assert std.isString(converted) : '"amazon_side_asn" expected to be of type "string"';
    {
      amazon_side_asn: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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

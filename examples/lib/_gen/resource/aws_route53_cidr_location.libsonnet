{
  local block = self,
  new(terraformName, cidrBlocks, cidrCollectionId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_cidr_location",
          type:: "resource",
          attributes:: ["cidr_blocks", "cidr_collection_id", "id", "name"],
        },
      },
    }
    + block.withCidrBlocks(cidrBlocks)
    + block.withCidrCollectionId(cidrCollectionId)
    + block.withName(name)
  ),
  withCidrBlocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_blocks" expected to be of type "set"';
    {
      cidr_blocks: converted,
    }
  ),
  withCidrBlocksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_blocks" expected to be of type "set"';
    {
      cidr_blocks+: converted,
    }
  ),
  withCidrCollectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_collection_id" expected to be of type "string"';
    {
      cidr_collection_id: converted,
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
}

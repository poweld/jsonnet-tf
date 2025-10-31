{
  local block = self,
  new(terraformName, addressFamily, maxEntries, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_managed_prefix_list",
          type:: "resource",
          attributes:: ["address_family", "arn", "id", "max_entries", "name", "owner_id", "region", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withAddressFamily(addressFamily)
    + block.withMaxEntries(maxEntries)
    + block.withName(name)
  ),
  withAddressFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_family" expected to be of type "string"';
    {
      address_family: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxEntries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_entries" expected to be of type "number"';
    {
      max_entries: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  entry:: {
    local block = self,
    new(cidr):: (
      {}
      + block.withCidr(cidr)
    ),
    withCidr(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr" expected to be of type "string"';
      {
        cidr: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
  },
  withEntry(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      entry: value,
    }
  ),
  withEntryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      entry+: converted,
    }
  ),
}

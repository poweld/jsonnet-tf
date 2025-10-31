{
  local block = self,
  new(terraformName, cidr, prefixListId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_managed_prefix_list_entry",
          type:: "resource",
          attributes:: ["cidr", "description", "id", "prefix_list_id", "region"],
        },
      },
    }
    + block.withCidr(cidr)
    + block.withPrefixListId(prefixListId)
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrefixListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix_list_id" expected to be of type "string"';
    {
      prefix_list_id: converted,
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

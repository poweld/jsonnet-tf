{
  local block = self,
  new(terraformName, ipamPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipam_pool_cidr_allocation",
          type:: "resource",
          attributes:: ["cidr", "description", "disallowed_cidrs", "id", "ipam_pool_allocation_id", "ipam_pool_id", "netmask_length", "region", "resource_id", "resource_owner", "resource_type"],
        },
      },
    }
    + block.withIpamPoolId(ipamPoolId)
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
  withDisallowedCidrs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disallowed_cidrs" expected to be of type "set"';
    {
      disallowed_cidrs: converted,
    }
  ),
  withDisallowedCidrsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disallowed_cidrs" expected to be of type "set"';
    {
      disallowed_cidrs+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpamPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_pool_id" expected to be of type "string"';
    {
      ipam_pool_id: converted,
    }
  ),
  withNetmaskLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"netmask_length" expected to be of type "number"';
    {
      netmask_length: converted,
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

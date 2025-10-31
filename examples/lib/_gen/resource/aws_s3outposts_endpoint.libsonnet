{
  local block = self,
  new(terraformName, outpostId, securityGroupId, subnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3outposts_endpoint",
          type:: "resource",
          attributes:: ["access_type", "arn", "cidr_block", "creation_time", "customer_owned_ipv4_pool", "id", "network_interfaces", "outpost_id", "region", "security_group_id", "subnet_id"],
        },
      },
    }
    + block.withOutpostId(outpostId)
    + block.withSecurityGroupId(securityGroupId)
    + block.withSubnetId(subnetId)
  ),
  withAccessType(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_type" expected to be of type "string"';
    {
      access_type: converted,
    }
  ),
  withCustomerOwnedIpv4Pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ipv4_pool" expected to be of type "string"';
    {
      customer_owned_ipv4_pool: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOutpostId(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_id" expected to be of type "string"';
    {
      outpost_id: converted,
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
  withSecurityGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id" expected to be of type "string"';
    {
      security_group_id: converted,
    }
  ),
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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

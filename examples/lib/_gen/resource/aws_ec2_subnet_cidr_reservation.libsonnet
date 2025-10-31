{
  local block = self,
  new(terraformName, cidrBlock, reservationType, subnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_subnet_cidr_reservation",
          type:: "resource",
          attributes:: ["cidr_block", "description", "id", "owner_id", "region", "reservation_type", "subnet_id"],
        },
      },
    }
    + block.withCidrBlock(cidrBlock)
    + block.withReservationType(reservationType)
    + block.withSubnetId(subnetId)
  ),
  withCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withReservationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"reservation_type" expected to be of type "string"';
    {
      reservation_type: converted,
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

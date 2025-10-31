{
  local block = self,
  new(terraformName, networkAclId, subnetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_network_acl_association",
          type:: "resource",
          attributes:: ["id", "network_acl_id", "region", "subnet_id"],
        },
      },
    }
    + block.withNetworkAclId(networkAclId)
    + block.withSubnetId(subnetId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNetworkAclId(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_acl_id" expected to be of type "string"';
    {
      network_acl_id: converted,
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

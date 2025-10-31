{
  local block = self,
  new(terraformName, securityGroupId, vpcEndpointId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_endpoint_security_group_association",
          type:: "resource",
          attributes:: ["id", "region", "replace_default_association", "security_group_id", "vpc_endpoint_id"],
        },
      },
    }
    + block.withSecurityGroupId(securityGroupId)
    + block.withVpcEndpointId(vpcEndpointId)
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
  withReplaceDefaultAssociation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"replace_default_association" expected to be of type "bool"';
    {
      replace_default_association: converted,
    }
  ),
  withSecurityGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id" expected to be of type "string"';
    {
      security_group_id: converted,
    }
  ),
  withVpcEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
    {
      vpc_endpoint_id: converted,
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

{
  local block = self,
  new(terraformName, ipamPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipam_pool_cidr",
          type:: "resource",
          attributes:: ["cidr", "id", "ipam_pool_cidr_id", "ipam_pool_id", "netmask_length", "region"],
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
  cidr_authorization_context:: {
    local block = self,
    new():: (
      {}
    ),
    withMessage(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
    withSignature(value):: (
      local converted = value;
      assert std.isString(converted) : '"signature" expected to be of type "string"';
      {
        signature: converted,
      }
    ),
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
  withCidrAuthorizationContext(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_authorization_context: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCidrAuthorizationContextMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_authorization_context+: converted,
    }
  ),
}

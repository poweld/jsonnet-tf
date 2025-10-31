{
  local block = self,
  new(terraformName, resourceArn, webAclId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafregional_web_acl_association",
          type:: "resource",
          attributes:: ["id", "region", "resource_arn", "web_acl_id"],
        },
      },
    }
    + block.withResourceArn(resourceArn)
    + block.withWebAclId(webAclId)
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
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  withWebAclId(value):: (
    local converted = value;
    assert std.isString(converted) : '"web_acl_id" expected to be of type "string"';
    {
      web_acl_id: converted,
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

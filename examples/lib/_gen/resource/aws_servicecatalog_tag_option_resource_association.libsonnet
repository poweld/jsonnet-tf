{
  local block = self,
  new(terraformName, resourceId, tagOptionId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicecatalog_tag_option_resource_association",
          type:: "resource",
          attributes:: ["id", "region", "resource_arn", "resource_created_time", "resource_description", "resource_id", "resource_name", "tag_option_id"],
        },
      },
    }
    + block.withResourceId(resourceId)
    + block.withTagOptionId(tagOptionId)
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
  withResourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  withTagOptionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_option_id" expected to be of type "string"';
    {
      tag_option_id: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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

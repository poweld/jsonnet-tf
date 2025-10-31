{
  local block = self,
  new(terraformName, applicationId, attributeGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicecatalogappregistry_attribute_group_association",
          type:: "resource",
          attributes:: ["application_id", "attribute_group_id", "region"],
        },
      },
    }
    + block.withApplicationId(applicationId)
    + block.withAttributeGroupId(attributeGroupId)
  ),
  "#withApplicationId":: "ID of the application.",
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  "#withAttributeGroupId":: "ID of the attribute group to associate with the application.",
  withAttributeGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"attribute_group_id" expected to be of type "string"';
    {
      attribute_group_id: converted,
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

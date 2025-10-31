{
  local block = self,
  new(terraformName, modelPackageGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_model_package_group",
          type:: "resource",
          attributes:: ["arn", "id", "model_package_group_description", "model_package_group_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withModelPackageGroupName(modelPackageGroupName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withModelPackageGroupDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_package_group_description" expected to be of type "string"';
    {
      model_package_group_description: converted,
    }
  ),
  withModelPackageGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_package_group_name" expected to be of type "string"';
    {
      model_package_group_name: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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

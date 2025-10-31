{
  local block = self,
  new(terraformName, modelPackageGroupName, resourcePolicy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_model_package_group_policy",
          type:: "resource",
          attributes:: ["id", "model_package_group_name", "region", "resource_policy"],
        },
      },
    }
    + block.withModelPackageGroupName(modelPackageGroupName)
    + block.withResourcePolicy(resourcePolicy)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withResourcePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_policy" expected to be of type "string"';
    {
      resource_policy: converted,
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

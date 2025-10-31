{
  local block = self,
  new(terraformName, projectName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_project",
          type:: "resource",
          attributes:: ["arn", "id", "project_description", "project_id", "project_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withProjectName(projectName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProjectDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_description" expected to be of type "string"';
    {
      project_description: converted,
    }
  ),
  withProjectName(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_name" expected to be of type "string"';
    {
      project_name: converted,
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
  service_catalog_provisioning_details:: {
    local block = self,
    new(productId):: (
      {}
      + block.withProductId(productId)
    ),
    withPathId(value):: (
      local converted = value;
      assert std.isString(converted) : '"path_id" expected to be of type "string"';
      {
        path_id: converted,
      }
    ),
    withProductId(value):: (
      local converted = value;
      assert std.isString(converted) : '"product_id" expected to be of type "string"';
      {
        product_id: converted,
      }
    ),
    withProvisioningArtifactId(value):: (
      local converted = value;
      assert std.isString(converted) : '"provisioning_artifact_id" expected to be of type "string"';
      {
        provisioning_artifact_id: converted,
      }
    ),
    provisioning_parameter:: {
      local block = self,
      new(key):: (
        {}
        + block.withKey(key)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withProvisioningParameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioning_parameter: value,
      }
    ),
    withProvisioningParameterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provisioning_parameter+: converted,
      }
    ),
  },
  withServiceCatalogProvisioningDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_catalog_provisioning_details: value,
    }
  ),
  withServiceCatalogProvisioningDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_catalog_provisioning_details+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, infrastructureConfigurationArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_imagebuilder_image",
          type:: "resource",
          attributes:: ["arn", "container_recipe_arn", "date_created", "distribution_configuration_arn", "enhanced_image_metadata_enabled", "execution_role", "id", "image_recipe_arn", "infrastructure_configuration_arn", "name", "os_version", "output_resources", "platform", "region", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withInfrastructureConfigurationArn(infrastructureConfigurationArn)
  ),
  withContainerRecipeArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_recipe_arn" expected to be of type "string"';
    {
      container_recipe_arn: converted,
    }
  ),
  withDistributionConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"distribution_configuration_arn" expected to be of type "string"';
    {
      distribution_configuration_arn: converted,
    }
  ),
  withEnhancedImageMetadataEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_image_metadata_enabled" expected to be of type "bool"';
    {
      enhanced_image_metadata_enabled: converted,
    }
  ),
  withExecutionRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role" expected to be of type "string"';
    {
      execution_role: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageRecipeArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_recipe_arn" expected to be of type "string"';
    {
      image_recipe_arn: converted,
    }
  ),
  withInfrastructureConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"infrastructure_configuration_arn" expected to be of type "string"';
    {
      infrastructure_configuration_arn: converted,
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
  image_scanning_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withImageScanningEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"image_scanning_enabled" expected to be of type "bool"';
      {
        image_scanning_enabled: converted,
      }
    ),
    ecr_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withContainerTags(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags: converted,
        }
      ),
      withContainerTagsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"container_tags" expected to be of type "set"';
        {
          container_tags+: converted,
        }
      ),
      withRepositoryName(value):: (
        local converted = value;
        assert std.isString(converted) : '"repository_name" expected to be of type "string"';
        {
          repository_name: converted,
        }
      ),
    },
    withEcrConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_configuration: value,
      }
    ),
    withEcrConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_configuration+: converted,
      }
    ),
  },
  image_tests_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withImageTestsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"image_tests_enabled" expected to be of type "bool"';
      {
        image_tests_enabled: converted,
      }
    ),
    withTimeoutMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_minutes" expected to be of type "number"';
      {
        timeout_minutes: converted,
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
  },
  workflow:: {
    local block = self,
    new(workflowArn):: (
      {}
      + block.withWorkflowArn(workflowArn)
    ),
    withOnFailure(value):: (
      local converted = value;
      assert std.isString(converted) : '"on_failure" expected to be of type "string"';
      {
        on_failure: converted,
      }
    ),
    withParallelGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"parallel_group" expected to be of type "string"';
      {
        parallel_group: converted,
      }
    ),
    withWorkflowArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"workflow_arn" expected to be of type "string"';
      {
        workflow_arn: converted,
      }
    ),
    parameter:: {
      local block = self,
      new(name, value):: (
        {}
        + block.withName(name)
        + block.withValue(value)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
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
    withParameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter: value,
      }
    ),
    withParameterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter+: converted,
      }
    ),
  },
  withImageScanningConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration: value,
    }
  ),
  withImageTestsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tests_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withWorkflow(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow: value,
    }
  ),
  withImageScanningConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration+: converted,
    }
  ),
  withImageTestsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tests_configuration+: converted,
    }
  ),
  withWorkflowMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow+: converted,
    }
  ),
}

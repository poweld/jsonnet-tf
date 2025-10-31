{
  local block = self,
  new(terraformName, name, owner, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_servicecatalog_product",
          type:: "resource",
          attributes:: ["accept_language", "arn", "created_time", "description", "distributor", "has_default_path", "id", "name", "owner", "region", "status", "support_description", "support_email", "support_url", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withOwner(owner)
    + block.withType(type)
  ),
  withAcceptLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"accept_language" expected to be of type "string"';
    {
      accept_language: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDistributor(value):: (
    local converted = value;
    assert std.isString(converted) : '"distributor" expected to be of type "string"';
    {
      distributor: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
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
  withSupportDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_description" expected to be of type "string"';
    {
      support_description: converted,
    }
  ),
  withSupportEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_email" expected to be of type "string"';
    {
      support_email: converted,
    }
  ),
  withSupportUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_url" expected to be of type "string"';
    {
      support_url: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  provisioning_artifact_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withDisableTemplateValidation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_template_validation" expected to be of type "bool"';
      {
        disable_template_validation: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withTemplatePhysicalId(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_physical_id" expected to be of type "string"';
      {
        template_physical_id: converted,
      }
    ),
    withTemplateUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_url" expected to be of type "string"';
      {
        template_url: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withProvisioningArtifactParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_artifact_parameters: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withProvisioningArtifactParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_artifact_parameters+: converted,
    }
  ),
}

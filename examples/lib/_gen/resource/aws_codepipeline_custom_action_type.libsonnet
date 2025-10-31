{
  local block = self,
  new(terraformName, category, providerName, version):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codepipeline_custom_action_type",
          type:: "resource",
          attributes:: ["arn", "category", "id", "owner", "provider_name", "region", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withCategory(category)
    + block.withProviderName(providerName)
    + block.withVersion(version)
  ),
  withCategory(value):: (
    local converted = value;
    assert std.isString(converted) : '"category" expected to be of type "string"';
    {
      category: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProviderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
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
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration_property:: {
    local block = self,
    new(key, name, required, secret):: (
      {}
      + block.withKey(key)
      + block.withName(name)
      + block.withRequired(required)
      + block.withSecret(secret)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withKey(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"key" expected to be of type "bool"';
      {
        key: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withQueryable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"queryable" expected to be of type "bool"';
      {
        queryable: converted,
      }
    ),
    withRequired(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
    withSecret(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"secret" expected to be of type "bool"';
      {
        secret: converted,
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
  input_artifact_details:: {
    local block = self,
    new(maximumCount, minimumCount):: (
      {}
      + block.withMaximumCount(maximumCount)
      + block.withMinimumCount(minimumCount)
    ),
    withMaximumCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_count" expected to be of type "number"';
      {
        maximum_count: converted,
      }
    ),
    withMinimumCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_count" expected to be of type "number"';
      {
        minimum_count: converted,
      }
    ),
  },
  output_artifact_details:: {
    local block = self,
    new(maximumCount, minimumCount):: (
      {}
      + block.withMaximumCount(maximumCount)
      + block.withMinimumCount(minimumCount)
    ),
    withMaximumCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_count" expected to be of type "number"';
      {
        maximum_count: converted,
      }
    ),
    withMinimumCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_count" expected to be of type "number"';
      {
        minimum_count: converted,
      }
    ),
  },
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    withEntityUrlTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"entity_url_template" expected to be of type "string"';
      {
        entity_url_template: converted,
      }
    ),
    withExecutionUrlTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_url_template" expected to be of type "string"';
      {
        execution_url_template: converted,
      }
    ),
    withRevisionUrlTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"revision_url_template" expected to be of type "string"';
      {
        revision_url_template: converted,
      }
    ),
    withThirdPartyConfigurationUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"third_party_configuration_url" expected to be of type "string"';
      {
        third_party_configuration_url: converted,
      }
    ),
  },
  withConfigurationProperty(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_property: value,
    }
  ),
  withInputArtifactDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_artifact_details: value,
    }
  ),
  withOutputArtifactDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_artifact_details: value,
    }
  ),
  withSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings: value,
    }
  ),
  withConfigurationPropertyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_property+: converted,
    }
  ),
  withInputArtifactDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_artifact_details+: converted,
    }
  ),
  withOutputArtifactDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_artifact_details+: converted,
    }
  ),
  withSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings+: converted,
    }
  ),
}

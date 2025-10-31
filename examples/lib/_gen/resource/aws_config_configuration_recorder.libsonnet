{
  local block = self,
  new(terraformName, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_configuration_recorder",
          type:: "resource",
          attributes:: ["id", "name", "region", "role_arn"],
        },
      },
    }
    + block.withRoleArn(roleArn)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  recording_group:: {
    local block = self,
    new():: (
      {}
    ),
    withAllSupported(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"all_supported" expected to be of type "bool"';
      {
        all_supported: converted,
      }
    ),
    withIncludeGlobalResourceTypes(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_global_resource_types" expected to be of type "bool"';
      {
        include_global_resource_types: converted,
      }
    ),
    withResourceTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
      {
        resource_types: converted,
      }
    ),
    withResourceTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
      {
        resource_types+: converted,
      }
    ),
    exclusion_by_resource_types:: {
      local block = self,
      new():: (
        {}
      ),
      withResourceTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types: converted,
        }
      ),
      withResourceTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types+: converted,
        }
      ),
    },
    recording_strategy:: {
      local block = self,
      new():: (
        {}
      ),
      withUseOnly(value):: (
        local converted = value;
        assert std.isString(converted) : '"use_only" expected to be of type "string"';
        {
          use_only: converted,
        }
      ),
    },
    withExclusionByResourceTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_by_resource_types: value,
      }
    ),
    withRecordingStrategy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_strategy: value,
      }
    ),
    withExclusionByResourceTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclusion_by_resource_types+: converted,
      }
    ),
    withRecordingStrategyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_strategy+: converted,
      }
    ),
  },
  recording_mode:: {
    local block = self,
    new():: (
      {}
    ),
    withRecordingFrequency(value):: (
      local converted = value;
      assert std.isString(converted) : '"recording_frequency" expected to be of type "string"';
      {
        recording_frequency: converted,
      }
    ),
    recording_mode_override:: {
      local block = self,
      new(recordingFrequency, resourceTypes):: (
        {}
        + block.withRecordingFrequency(recordingFrequency)
        + block.withResourceTypes(resourceTypes)
      ),
      withDescription(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      withRecordingFrequency(value):: (
        local converted = value;
        assert std.isString(converted) : '"recording_frequency" expected to be of type "string"';
        {
          recording_frequency: converted,
        }
      ),
      withResourceTypes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types: converted,
        }
      ),
      withResourceTypesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
        {
          resource_types+: converted,
        }
      ),
    },
    withRecordingModeOverride(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_mode_override: value,
      }
    ),
    withRecordingModeOverrideMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recording_mode_override+: converted,
      }
    ),
  },
  withRecordingGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_group: value,
    }
  ),
  withRecordingMode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_mode: value,
    }
  ),
  withRecordingGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_group+: converted,
    }
  ),
  withRecordingModeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recording_mode+: converted,
    }
  ),
}

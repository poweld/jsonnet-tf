{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_configuration_policy",
          type:: "resource",
          attributes:: ["arn", "description", "id", "name", "region"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  configuration_policy:: {
    local block = self,
    new(serviceEnabled):: (
      {}
      + block.withServiceEnabled(serviceEnabled)
    ),
    withEnabledStandardArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_standard_arns" expected to be of type "set"';
      {
        enabled_standard_arns: converted,
      }
    ),
    withEnabledStandardArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_standard_arns" expected to be of type "set"';
      {
        enabled_standard_arns+: converted,
      }
    ),
    withServiceEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"service_enabled" expected to be of type "bool"';
      {
        service_enabled: converted,
      }
    ),
    security_controls_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withDisabledControlIdentifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disabled_control_identifiers" expected to be of type "set"';
        {
          disabled_control_identifiers: converted,
        }
      ),
      withDisabledControlIdentifiersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disabled_control_identifiers" expected to be of type "set"';
        {
          disabled_control_identifiers+: converted,
        }
      ),
      withEnabledControlIdentifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_control_identifiers" expected to be of type "set"';
        {
          enabled_control_identifiers: converted,
        }
      ),
      withEnabledControlIdentifiersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_control_identifiers" expected to be of type "set"';
        {
          enabled_control_identifiers+: converted,
        }
      ),
      security_control_custom_parameter:: {
        local block = self,
        new(securityControlId):: (
          {}
          + block.withSecurityControlId(securityControlId)
        ),
        withSecurityControlId(value):: (
          local converted = value;
          assert std.isString(converted) : '"security_control_id" expected to be of type "string"';
          {
            security_control_id: converted,
          }
        ),
        parameter:: {
          local block = self,
          new(name, valueType):: (
            {}
            + block.withName(name)
            + block.withValueType(valueType)
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          withValueType(value):: (
            local converted = value;
            assert std.isString(converted) : '"value_type" expected to be of type "string"';
            {
              value_type: converted,
            }
          ),
          bool:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"value" expected to be of type "bool"';
              {
                value: converted,
              }
            ),
          },
          double:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          enum:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          enum_list:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value: converted,
              }
            ),
            withValueMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value+: converted,
              }
            ),
          },
          int:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          int_list:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value: converted,
              }
            ),
            withValueMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value+: converted,
              }
            ),
          },
          string:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          string_list:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value: converted,
              }
            ),
            withValueMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value+: converted,
              }
            ),
          },
          withBool(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              bool: value,
            }
          ),
          withDouble(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              double: value,
            }
          ),
          withEnum(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum: value,
            }
          ),
          withEnumList(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum_list: value,
            }
          ),
          withInt(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int: value,
            }
          ),
          withIntList(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int_list: value,
            }
          ),
          withString(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string: value,
            }
          ),
          withStringList(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string_list: value,
            }
          ),
          withBoolMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              bool+: converted,
            }
          ),
          withDoubleMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              double+: converted,
            }
          ),
          withEnumMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum+: converted,
            }
          ),
          withEnumListMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum_list+: converted,
            }
          ),
          withIntMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int+: converted,
            }
          ),
          withIntListMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int_list+: converted,
            }
          ),
          withStringMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string+: converted,
            }
          ),
          withStringListMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string_list+: converted,
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
      withSecurityControlCustomParameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          security_control_custom_parameter: value,
        }
      ),
      withSecurityControlCustomParameterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          security_control_custom_parameter+: converted,
        }
      ),
    },
    withSecurityControlsConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_controls_configuration: value,
      }
    ),
    withSecurityControlsConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_controls_configuration+: converted,
      }
    ),
  },
  withConfigurationPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_policy: value,
    }
  ),
  withConfigurationPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_policy+: converted,
    }
  ),
}

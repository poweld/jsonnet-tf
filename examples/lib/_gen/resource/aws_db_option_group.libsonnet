{
  local block = self,
  new(terraformName, engineName, majorEngineVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_option_group",
          type:: "resource",
          attributes:: ["arn", "engine_name", "id", "major_engine_version", "name", "name_prefix", "option_group_description", "region", "skip_destroy", "tags", "tags_all"],
        },
      },
    }
    + block.withEngineName(engineName)
    + block.withMajorEngineVersion(majorEngineVersion)
  ),
  withEngineName(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_name" expected to be of type "string"';
    {
      engine_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMajorEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"major_engine_version" expected to be of type "string"';
    {
      major_engine_version: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withOptionGroupDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"option_group_description" expected to be of type "string"';
    {
      option_group_description: converted,
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
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
  option:: {
    local block = self,
    new(optionName):: (
      {}
      + block.withOptionName(optionName)
    ),
    withDbSecurityGroupMemberships(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_security_group_memberships" expected to be of type "set"';
      {
        db_security_group_memberships: converted,
      }
    ),
    withDbSecurityGroupMembershipsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_security_group_memberships" expected to be of type "set"';
      {
        db_security_group_memberships+: converted,
      }
    ),
    withOptionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"option_name" expected to be of type "string"';
      {
        option_name: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
    withVpcSecurityGroupMemberships(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_memberships" expected to be of type "set"';
      {
        vpc_security_group_memberships: converted,
      }
    ),
    withVpcSecurityGroupMembershipsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_memberships" expected to be of type "set"';
      {
        vpc_security_group_memberships+: converted,
      }
    ),
    option_settings:: {
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
    withOptionSettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        option_settings: value,
      }
    ),
    withOptionSettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        option_settings+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withOption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      option: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withOptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      option+: converted,
    }
  ),
}

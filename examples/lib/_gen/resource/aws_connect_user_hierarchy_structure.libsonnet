{
  local block = self,
  new(terraformName, instanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_user_hierarchy_structure",
          type:: "resource",
          attributes:: ["id", "instance_id", "region"],
        },
      },
    }
    + block.withInstanceId(instanceId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  hierarchy_structure:: {
    local block = self,
    new():: (
      {}
    ),
    level_five:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    level_four:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    level_one:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    level_three:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    level_two:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    withLevelFive(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_five: value,
      }
    ),
    withLevelFour(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_four: value,
      }
    ),
    withLevelOne(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_one: value,
      }
    ),
    withLevelThree(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_three: value,
      }
    ),
    withLevelTwo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_two: value,
      }
    ),
    withLevelFiveMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_five+: converted,
      }
    ),
    withLevelFourMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_four+: converted,
      }
    ),
    withLevelOneMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_one+: converted,
      }
    ),
    withLevelThreeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_three+: converted,
      }
    ),
    withLevelTwoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_two+: converted,
      }
    ),
  },
  withHierarchyStructure(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hierarchy_structure: value,
    }
  ),
  withHierarchyStructureMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hierarchy_structure+: converted,
    }
  ),
}

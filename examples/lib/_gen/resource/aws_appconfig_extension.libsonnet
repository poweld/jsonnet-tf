{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_extension",
          type:: "resource",
          attributes:: ["arn", "description", "id", "name", "region", "tags", "tags_all", "version"],
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
  action_point:: {
    local block = self,
    new(point):: (
      {}
      + block.withPoint(point)
    ),
    withPoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"point" expected to be of type "string"';
      {
        point: converted,
      }
    ),
    action:: {
      local block = self,
      new(name, uri):: (
        {}
        + block.withName(name)
        + block.withUri(uri)
      ),
      withDescription(value):: (
        local converted = value;
        assert std.isString(converted) : '"description" expected to be of type "string"';
        {
          description: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withUri(value):: (
        local converted = value;
        assert std.isString(converted) : '"uri" expected to be of type "string"';
        {
          uri: converted,
        }
      ),
    },
    withAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    withActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
  },
  parameter:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withRequired(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
  },
  withActionPoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_point: value,
    }
  ),
  withParameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter: value,
    }
  ),
  withActionPointMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_point+: converted,
    }
  ),
  withParameterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter+: converted,
    }
  ),
}

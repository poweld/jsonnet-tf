{
  local block = self,
  new(terraformName, iamRoleArn, name, planId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_selection",
          type:: "resource",
          attributes:: ["iam_role_arn", "id", "name", "not_resources", "plan_id", "region", "resources"],
        },
      },
    }
    + block.withIamRoleArn(iamRoleArn)
    + block.withName(name)
    + block.withPlanId(planId)
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
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
  withNotResources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
    {
      not_resources: converted,
    }
  ),
  withNotResourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"not_resources" expected to be of type "set"';
    {
      not_resources+: converted,
    }
  ),
  withPlanId(value):: (
    local converted = value;
    assert std.isString(converted) : '"plan_id" expected to be of type "string"';
    {
      plan_id: converted,
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
  withResources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources: converted,
    }
  ),
  withResourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  condition:: {
    local block = self,
    new():: (
      {}
    ),
    string_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
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
    string_like:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
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
    string_not_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
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
    string_not_like:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
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
    withStringEquals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals: value,
      }
    ),
    withStringLike(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_like: value,
      }
    ),
    withStringNotEquals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals: value,
      }
    ),
    withStringNotLike(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_like: value,
      }
    ),
    withStringEqualsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals+: converted,
      }
    ),
    withStringLikeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_like+: converted,
      }
    ),
    withStringNotEqualsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals+: converted,
      }
    ),
    withStringNotLikeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_like+: converted,
      }
    ),
  },
  selection_tag:: {
    local block = self,
    new(key, type, value):: (
      {}
      + block.withKey(key)
      + block.withType(type)
      + block.withValue(value)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  withCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  withSelectionTag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      selection_tag: value,
    }
  ),
  withConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
  withSelectionTagMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      selection_tag+: converted,
    }
  ),
}

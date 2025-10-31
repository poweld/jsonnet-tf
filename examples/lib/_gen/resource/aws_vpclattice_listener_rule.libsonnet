{
  local block = self,
  new(terraformName, listenerIdentifier, name, priority, serviceIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_listener_rule",
          type:: "resource",
          attributes:: ["arn", "id", "listener_identifier", "name", "priority", "region", "rule_id", "service_identifier", "tags", "tags_all"],
        },
      },
    }
    + block.withListenerIdentifier(listenerIdentifier)
    + block.withName(name)
    + block.withPriority(priority)
    + block.withServiceIdentifier(serviceIdentifier)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withListenerIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_identifier" expected to be of type "string"';
    {
      listener_identifier: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  withServiceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_identifier" expected to be of type "string"';
    {
      service_identifier: converted,
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
  action:: {
    local block = self,
    new():: (
      {}
    ),
    fixed_response:: {
      local block = self,
      new(statusCode):: (
        {}
        + block.withStatusCode(statusCode)
      ),
      withStatusCode(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"status_code" expected to be of type "number"';
        {
          status_code: converted,
        }
      ),
    },
    forward:: {
      local block = self,
      new():: (
        {}
      ),
      target_groups:: {
        local block = self,
        new(targetGroupIdentifier):: (
          {}
          + block.withTargetGroupIdentifier(targetGroupIdentifier)
        ),
        withTargetGroupIdentifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_group_identifier" expected to be of type "string"';
          {
            target_group_identifier: converted,
          }
        ),
        withWeight(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"weight" expected to be of type "number"';
          {
            weight: converted,
          }
        ),
      },
      withTargetGroups(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_groups: value,
        }
      ),
      withTargetGroupsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_groups+: converted,
        }
      ),
    },
    withFixedResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response: value,
      }
    ),
    withForward(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward: value,
      }
    ),
    withFixedResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response+: converted,
      }
    ),
    withForwardMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward+: converted,
      }
    ),
  },
  match:: {
    local block = self,
    new():: (
      {}
    ),
    http_match:: {
      local block = self,
      new():: (
        {}
      ),
      withMethod(value):: (
        local converted = value;
        assert std.isString(converted) : '"method" expected to be of type "string"';
        {
          method: converted,
        }
      ),
      header_matches:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withCaseSensitive(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"case_sensitive" expected to be of type "bool"';
          {
            case_sensitive: converted,
          }
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        match:: {
          local block = self,
          new():: (
            {}
          ),
          withContains(value):: (
            local converted = value;
            assert std.isString(converted) : '"contains" expected to be of type "string"';
            {
              contains: converted,
            }
          ),
          withExact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          withPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"prefix" expected to be of type "string"';
            {
              prefix: converted,
            }
          ),
        },
        withMatch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match: value,
          }
        ),
        withMatchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match+: converted,
          }
        ),
      },
      path_match:: {
        local block = self,
        new():: (
          {}
        ),
        withCaseSensitive(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"case_sensitive" expected to be of type "bool"';
          {
            case_sensitive: converted,
          }
        ),
        match:: {
          local block = self,
          new():: (
            {}
          ),
          withExact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          withPrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"prefix" expected to be of type "string"';
            {
              prefix: converted,
            }
          ),
        },
        withMatch(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match: value,
          }
        ),
        withMatchMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            match+: converted,
          }
        ),
      },
      withHeaderMatches(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header_matches: value,
        }
      ),
      withPathMatch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          path_match: value,
        }
      ),
      withHeaderMatchesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header_matches+: converted,
        }
      ),
      withPathMatchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          path_match+: converted,
        }
      ),
    },
    withHttpMatch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_match: value,
      }
    ),
    withHttpMatchMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_match+: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  withMatch(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      match: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  withMatchMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      match+: converted,
    }
  ),
}

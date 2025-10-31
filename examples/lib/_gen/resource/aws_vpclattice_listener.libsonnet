{
  local block = self,
  new(terraformName, name, protocol):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_listener",
          type:: "resource",
          attributes:: ["arn", "created_at", "id", "last_updated_at", "listener_id", "name", "port", "protocol", "region", "service_arn", "service_identifier", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withProtocol(protocol)
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
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  withServiceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_arn" expected to be of type "string"';
    {
      service_arn: converted,
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
  default_action:: {
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
        new():: (
          {}
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
  withDefaultAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDefaultActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action+: converted,
    }
  ),
}

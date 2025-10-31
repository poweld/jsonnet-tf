{
  local block = self,
  new(terraformName, instanceId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_quick_connect",
          type:: "resource",
          attributes:: ["arn", "description", "id", "instance_id", "name", "quick_connect_id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withInstanceId(instanceId)
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
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  quick_connect_config:: {
    local block = self,
    new(quickConnectType):: (
      {}
      + block.withQuickConnectType(quickConnectType)
    ),
    withQuickConnectType(value):: (
      local converted = value;
      assert std.isString(converted) : '"quick_connect_type" expected to be of type "string"';
      {
        quick_connect_type: converted,
      }
    ),
    phone_config:: {
      local block = self,
      new(phoneNumber):: (
        {}
        + block.withPhoneNumber(phoneNumber)
      ),
      withPhoneNumber(value):: (
        local converted = value;
        assert std.isString(converted) : '"phone_number" expected to be of type "string"';
        {
          phone_number: converted,
        }
      ),
    },
    queue_config:: {
      local block = self,
      new(contactFlowId, queueId):: (
        {}
        + block.withContactFlowId(contactFlowId)
        + block.withQueueId(queueId)
      ),
      withContactFlowId(value):: (
        local converted = value;
        assert std.isString(converted) : '"contact_flow_id" expected to be of type "string"';
        {
          contact_flow_id: converted,
        }
      ),
      withQueueId(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_id" expected to be of type "string"';
        {
          queue_id: converted,
        }
      ),
    },
    user_config:: {
      local block = self,
      new(contactFlowId, userId):: (
        {}
        + block.withContactFlowId(contactFlowId)
        + block.withUserId(userId)
      ),
      withContactFlowId(value):: (
        local converted = value;
        assert std.isString(converted) : '"contact_flow_id" expected to be of type "string"';
        {
          contact_flow_id: converted,
        }
      ),
      withUserId(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_id" expected to be of type "string"';
        {
          user_id: converted,
        }
      ),
    },
    withPhoneConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        phone_config: value,
      }
    ),
    withQueueConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        queue_config: value,
      }
    ),
    withUserConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_config: value,
      }
    ),
    withPhoneConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        phone_config+: converted,
      }
    ),
    withQueueConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        queue_config+: converted,
      }
    ),
    withUserConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_config+: converted,
      }
    ),
  },
  withQuickConnectConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quick_connect_config: value,
    }
  ),
  withQuickConnectConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quick_connect_config+: converted,
    }
  ),
}

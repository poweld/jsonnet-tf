{
  local block = self,
  new(terraformName, hoursOfOperationId, instanceId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_queue",
          type:: "resource",
          attributes:: ["arn", "description", "hours_of_operation_id", "id", "instance_id", "max_contacts", "name", "queue_id", "quick_connect_ids", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withHoursOfOperationId(hoursOfOperationId)
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
  withHoursOfOperationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"hours_of_operation_id" expected to be of type "string"';
    {
      hours_of_operation_id: converted,
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
  withMaxContacts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_contacts" expected to be of type "number"';
    {
      max_contacts: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withQuickConnectIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"quick_connect_ids" expected to be of type "set"';
    {
      quick_connect_ids: converted,
    }
  ),
  withQuickConnectIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"quick_connect_ids" expected to be of type "set"';
    {
      quick_connect_ids+: converted,
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  outbound_caller_config:: {
    local block = self,
    new():: (
      {}
    ),
    withOutboundCallerIdName(value):: (
      local converted = value;
      assert std.isString(converted) : '"outbound_caller_id_name" expected to be of type "string"';
      {
        outbound_caller_id_name: converted,
      }
    ),
    withOutboundCallerIdNumberId(value):: (
      local converted = value;
      assert std.isString(converted) : '"outbound_caller_id_number_id" expected to be of type "string"';
      {
        outbound_caller_id_number_id: converted,
      }
    ),
    withOutboundFlowId(value):: (
      local converted = value;
      assert std.isString(converted) : '"outbound_flow_id" expected to be of type "string"';
      {
        outbound_flow_id: converted,
      }
    ),
  },
  withOutboundCallerConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outbound_caller_config: value,
    }
  ),
  withOutboundCallerConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outbound_caller_config+: converted,
    }
  ),
}

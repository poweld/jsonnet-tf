{
  local block = self,

  new(terraformName, approvalSequenceId, name, resourceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_condition",
          type:: "resource",
          attributes:: ["approval_sequence_id", "created", "created_by", "description", "id", "last_updated", "last_updated_by", "name", "priority", "resource_id", "status"],
        },
      },
    }
    + block.withApprovalSequenceId(approvalSequenceId)
    + block.withName(name)
    + block.withResourceId(resourceId)
  ),

  "#withApprovalSequenceId":: "The ID of the approval sequence.",
  withApprovalSequenceId(value):: (
    assert std.isString(value) : '"approval_sequence_id" expected to be of type "string"';

    {
      approval_sequence_id: value,
    }
  ),

  "#withDescription":: "The description of the request condition.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withName":: "The name of the request condition.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withPriority":: "The priority of the condition. The smaller the number, the higher the priority.",
  withPriority(value):: (
    assert std.isNumber(value) : '"priority" expected to be of type "number"';

    {
      priority: value,
    }
  ),

  "#withResourceId":: "The id of the resource in Okta ID format.",
  withResourceId(value):: (
    assert std.isString(value) : '"resource_id" expected to be of type "string"';

    {
      resource_id: value,
    }
  ),

  "#withStatus":: "Status of the condition. Valid values: ACTIVE, INACTIVE. Default is INACTIVE.",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  accessDurationSettings:: {
    local block = self,

    new():: (
      {}
    ),

    "#withDuration":: "The duration set by the admin for access durations. Use ISO8061 notation for duration values.",
    withDuration(value):: (
      assert std.isString(value) : '"duration" expected to be of type "string"';

      {
        duration: value,
      }
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  accessScopeSettings:: {
    local block = self,

    new(type):: (
      {}
      + block.withType(type)
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    ids:: {
      local block = self,

      new():: (
        {}
      ),

      "#withId":: "The group/entitlement bundle ID.",
      withId(value):: (
        assert std.isString(value) : '"id" expected to be of type "string"';

        {
          id: value,
        }
      ),
    },
    withIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids: converted,
      }
    ),
    withIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids+: converted,
      }
    ),
  },
  requesterSettings:: {
    local block = self,

    new(type):: (
      {}
      + block.withType(type)
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    ids:: {
      local block = self,

      new():: (
        {}
      ),

      "#withId":: "The group/team ID.",
      withId(value):: (
        assert std.isString(value) : '"id" expected to be of type "string"';

        {
          id: value,
        }
      ),
    },
    withIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids: converted,
      }
    ),
    withIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids+: converted,
      }
    ),
  },
  withAccessDurationSettings(value):: (
    {
      access_duration_settings: value,
    }
  ),
  withAccessScopeSettings(value):: (
    {
      access_scope_settings: value,
    }
  ),
  withRequesterSettings(value):: (
    {
      requester_settings: value,
    }
  ),
}

{
  local block = self,

  new(terraformName, entryId, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_end_user_my_requests",
          type:: "data",
          attributes:: ["access_duration", "created", "created_by", "entry_id", "grant_status", "granted", "id", "last_updated", "last_updated_by", "resolved", "revocation_scheduled", "revocation_status", "revoked", "status"],
        },
      },
    }
    + block.withEntryId(entryId)
    + block.withId(id)
  ),

  "#withEntryId":: "The ID of the catalog entry",
  withEntryId(value):: (
    assert std.isString(value) : '"entry_id" expected to be of type "string"';

    {
      entry_id: value,
    }
  ),

  "#withId":: "The ID of the request",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  requested:: {
    local block = self,

    new():: (
      {}
    ),
  },
  requestedBy:: {
    local block = self,

    new():: (
      {}
    ),
  },
  requestedFor:: {
    local block = self,

    new():: (
      {}
    ),
  },
  requesterFieldValues:: {
    local block = self,

    new(id):: (
      {}
      + block.withId(id)
    ),

    "#withId":: "The ID of a requesterField.",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    "#withLabel":: "A human-readable description of requesterField. It's used for display purposes and is optional",
    withLabel(value):: (
      assert std.isString(value) : '"label" expected to be of type "string"';

      {
        label: value,
      }
    ),

    "#withType":: "Type of value for the requester field.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    "#withValue":: "The value of requesterField, which depends on the type of the field",
    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),

    "#withValues":: "The values of requesterField with the type MULTISELECT. If the field type is MULTISELECT, this property is required.",
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';

      {
        values: converted,
      }
    ),

    "#withValuesMixin":: "The values of requesterField with the type MULTISELECT. If the field type is MULTISELECT, this property is required.",
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';

      {
        values+: converted,
      }
    ),
  },
  riskAssessment:: {
    local block = self,

    new():: (
      {}
    ),

    "#withRequestSubmissionType":: "Whether request submission is allowed or restricted in the risk settings.",
    withRequestSubmissionType(value):: (
      assert std.isString(value) : '"request_submission_type" expected to be of type "string"';

      {
        request_submission_type: value,
      }
    ),

    riskRules:: {
      local block = self,

      new():: (
        {}
      ),

      "#withDescription":: "The human readable description.",
      withDescription(value):: (
        assert std.isString(value) : '"description" expected to be of type "string"';

        {
          description: value,
        }
      ),

      "#withName":: "The name of a resource rule causing a conflict.",
      withName(value):: (
        assert std.isString(value) : '"name" expected to be of type "string"';

        {
          name: value,
        }
      ),

      "#withResourceName":: "Human readable name of the resource.",
      withResourceName(value):: (
        assert std.isString(value) : '"resource_name" expected to be of type "string"';

        {
          resource_name: value,
        }
      ),
    },
    withRiskRules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        risk_rules: converted,
      }
    ),
    withRiskRulesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        risk_rules+: converted,
      }
    ),
  },
  withRequested(value):: (
    {
      requested: value,
    }
  ),
  withRequestedBy(value):: (
    {
      requested_by: value,
    }
  ),
  withRequestedFor(value):: (
    {
      requested_for: value,
    }
  ),
  withRequesterFieldValues(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester_field_values: converted,
    }
  ),
  withRiskAssessment(value):: (
    {
      risk_assessment: value,
    }
  ),
  withRequesterFieldValuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester_field_values+: converted,
    }
  ),
}

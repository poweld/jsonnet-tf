{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_setting_resource",
          type:: "resource",
          attributes:: ["id"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The id of the resource in Okta ID format.",
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

  requestOnBehalfOfSettings:: {
    local block = self,

    new():: (
      {}
    ),

    "#withAllowed":: "Indicates that users who can request this resource could also request for another requester of the same resource",
    withAllowed(value):: (
      assert std.isBoolean(value) : '"allowed" expected to be of type "bool"';

      {
        allowed: value,
      }
    ),

    onlyFor:: {
      local block = self,

      new():: (
        {}
      ),

      "#withType":: "Which requesters the resource requester can request on behalf of. If onlyFor is not specified then any requester may request a resource on the behalf of any other user",
      withType(value):: (
        assert std.isString(value) : '"type" expected to be of type "string"';

        {
          type: value,
        }
      ),
    },
    withOnlyFor(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        only_for: converted,
      }
    ),
    withOnlyForMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        only_for+: converted,
      }
    ),
  },
  riskSettings:: {
    local block = self,

    new():: (
      {}
    ),

    defaultSetting:: {
      local block = self,

      new():: (
        {}
      ),

      "#withApprovalSequenceId":: "The ID of the approval sequence.",
      withApprovalSequenceId(value):: (
        assert std.isString(value) : '"approval_sequence_id" expected to be of type "string"';

        {
          approval_sequence_id: value,
        }
      ),

      withRequestSubmissionType(value):: (
        assert std.isString(value) : '"request_submission_type" expected to be of type "string"';

        {
          request_submission_type: value,
        }
      ),

      accessDurationSettings:: {
        local block = self,

        new():: (
          {}
        ),

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
      withAccessDurationSettings(value):: (
        {
          access_duration_settings: value,
        }
      ),
    },
    withDefaultSetting(value):: (
      {
        default_setting: value,
      }
    ),
  },
  withRequestOnBehalfOfSettings(value):: (
    {
      request_on_behalf_of_settings: value,
    }
  ),
  withRiskSettings(value):: (
    {
      risk_settings: value,
    }
  ),
}

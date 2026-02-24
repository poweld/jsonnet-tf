{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_campaign",
          type:: "resource",
          attributes:: ["campaign_tier", "campaign_type", "description", "id", "name", "skip_remediation"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withCampaignTier":: "Indicates the minimum required SKU to manage the campaign. Values can be `BASIC` and `PREMIUM`.",
  withCampaignTier(value):: (
    assert std.isString(value) : '"campaign_tier" expected to be of type "string"';

    {
      campaign_tier: value,
    }
  ),

  "#withCampaignType":: "Identifies if it is a resource campaign or a user campaign. By default it is RESOURCE.Values can be `RESOURCE` and `USER`.",
  withCampaignType(value):: (
    assert std.isString(value) : '"campaign_type" expected to be of type "string"';

    {
      campaign_type: value,
    }
  ),

  "#withDescription":: "Description about the campaign.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withName":: "Name of the campaign. Maintain some uniqueness when naming the campaign as it helps to identify and filter for campaigns when needed.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withSkipRemediation":: "If true, skip remediation when ending the campaign (only applicable if remediationSetting.noResponse=DENY).",
  withSkipRemediation(value):: (
    assert std.isBoolean(value) : '"skip_remediation" expected to be of type "bool"';

    {
      skip_remediation: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  notificationSettings:: {
    local block = self,

    new(notifyReviewPeriodEnd, notifyReviewerAtCampaignEnd, notifyReviewerDuringMidpointOfReview, notifyReviewerWhenOverdue, notifyReviewerWhenReviewAssigned):: (
      {}
      + block.withNotifyReviewPeriodEnd(notifyReviewPeriodEnd)
      + block.withNotifyReviewerAtCampaignEnd(notifyReviewerAtCampaignEnd)
      + block.withNotifyReviewerDuringMidpointOfReview(notifyReviewerDuringMidpointOfReview)
      + block.withNotifyReviewerWhenOverdue(notifyReviewerWhenOverdue)
      + block.withNotifyReviewerWhenReviewAssigned(notifyReviewerWhenReviewAssigned)
    ),

    "#withNotifyReviewPeriodEnd":: "To indicate whether a notification should be sent to the reviewer when a given reviewer level period is about to end.",
    withNotifyReviewPeriodEnd(value):: (
      assert std.isBoolean(value) : '"notify_review_period_end" expected to be of type "bool"';

      {
        notify_review_period_end: value,
      }
    ),

    "#withNotifyReviewerAtCampaignEnd":: "To indicate whether a notification should be sent to the reviewers when campaign has come to an end.",
    withNotifyReviewerAtCampaignEnd(value):: (
      assert std.isBoolean(value) : '"notify_reviewer_at_campaign_end" expected to be of type "bool"';

      {
        notify_reviewer_at_campaign_end: value,
      }
    ),

    "#withNotifyReviewerDuringMidpointOfReview":: "To indicate whether a notification should be sent to the reviewer during the midpoint of the review process.",
    withNotifyReviewerDuringMidpointOfReview(value):: (
      assert std.isBoolean(value) : '"notify_reviewer_during_midpoint_of_review" expected to be of type "bool"';

      {
        notify_reviewer_during_midpoint_of_review: value,
      }
    ),

    "#withNotifyReviewerWhenOverdue":: "To indicate whether a notification should be sent to the reviewer when the review is overdue.",
    withNotifyReviewerWhenOverdue(value):: (
      assert std.isBoolean(value) : '"notify_reviewer_when_overdue" expected to be of type "bool"';

      {
        notify_reviewer_when_overdue: value,
      }
    ),

    "#withNotifyReviewerWhenReviewAssigned":: "To indicate whether a notification should be sent to the reviewer when actionable reviews are assigned.",
    withNotifyReviewerWhenReviewAssigned(value):: (
      assert std.isBoolean(value) : '"notify_reviewer_when_review_assigned" expected to be of type "bool"';

      {
        notify_reviewer_when_review_assigned: value,
      }
    ),

    "#withRemindersReviewerBeforeCampaignCloseInSecs":: "Specifies times (in seconds) to send reminders to reviewers before the campaign closes. Max 3 values. Example: [86400, 172800, 604800]",
    withRemindersReviewerBeforeCampaignCloseInSecs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"reminders_reviewer_before_campaign_close_in_secs" expected to be of type "list"';

      {
        reminders_reviewer_before_campaign_close_in_secs: converted,
      }
    ),

    "#withRemindersReviewerBeforeCampaignCloseInSecsMixin":: "Specifies times (in seconds) to send reminders to reviewers before the campaign closes. Max 3 values. Example: [86400, 172800, 604800]",
    withRemindersReviewerBeforeCampaignCloseInSecsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"reminders_reviewer_before_campaign_close_in_secs" expected to be of type "list"';

      {
        reminders_reviewer_before_campaign_close_in_secs+: converted,
      }
    ),
  },
  principalScopeSettings:: {
    local block = self,

    new(type):: (
      {}
      + block.withType(type)
    ),

    "#withExcludedUserIds":: "An array of Okta user IDs excluded from access certification or the campaign. This field is optional. A maximum of 50 users can be specified in the array.",
    withExcludedUserIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"excluded_user_ids" expected to be of type "list"';

      {
        excluded_user_ids: converted,
      }
    ),

    "#withExcludedUserIdsMixin":: "An array of Okta user IDs excluded from access certification or the campaign. This field is optional. A maximum of 50 users can be specified in the array.",
    withExcludedUserIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"excluded_user_ids" expected to be of type "list"';

      {
        excluded_user_ids+: converted,
      }
    ),

    "#withGroupIds":: "An array of Okta group IDs included from access certification or the campaign. userIds, groupIds or userScopeExpression is required if campaign type is USER. A maximum of 5 groups can be specified in the array.",
    withGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"group_ids" expected to be of type "list"';

      {
        group_ids: converted,
      }
    ),

    "#withGroupIdsMixin":: "An array of Okta group IDs included from access certification or the campaign. userIds, groupIds or userScopeExpression is required if campaign type is USER. A maximum of 5 groups can be specified in the array.",
    withGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"group_ids" expected to be of type "list"';

      {
        group_ids+: converted,
      }
    ),

    "#withIncludeOnlyActiveUsers":: "If set to true, only active Okta users are included in the campaign.",
    withIncludeOnlyActiveUsers(value):: (
      assert std.isBoolean(value) : '"include_only_active_users" expected to be of type "bool"';

      {
        include_only_active_users: value,
      }
    ),

    "#withOnlyIncludeUsersWithSodConflicts":: "If set to true, only includes users that have at least one SOD conflict that was caused due to entitlement(s) within Campaign scope.",
    withOnlyIncludeUsersWithSodConflicts(value):: (
      assert std.isBoolean(value) : '"only_include_users_with_sod_conflicts" expected to be of type "bool"';

      {
        only_include_users_with_sod_conflicts: value,
      }
    ),

    "#withType":: "Specifies the type for principal_scope_settings.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    "#withUserIds":: "An array of Okta user IDs included from access certification or the campaign. userIds, groupIds or userScopeExpression is required if campaign type is USER. A maximum of 100 users can be specified in the array.",
    withUserIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"user_ids" expected to be of type "list"';

      {
        user_ids: converted,
      }
    ),

    "#withUserIdsMixin":: "An array of Okta user IDs included from access certification or the campaign. userIds, groupIds or userScopeExpression is required if campaign type is USER. A maximum of 100 users can be specified in the array.",
    withUserIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"user_ids" expected to be of type "list"';

      {
        user_ids+: converted,
      }
    ),

    "#withUserScopeExpression":: "The Okta expression language user expression on the resourceSettings to include users in the campaign.",
    withUserScopeExpression(value):: (
      assert std.isString(value) : '"user_scope_expression" expected to be of type "string"';

      {
        user_scope_expression: value,
      }
    ),

    predefinedInactiveUsersScope:: {
      local block = self,

      new():: (
        {}
      ),

      "#withInactiveDays":: "The duration the users have not used single sign on (SSO) to access their account within the specific time frame. Minimum 30 days and maximum 365 days are supported.",
      withInactiveDays(value):: (
        assert std.isNumber(value) : '"inactive_days" expected to be of type "number"';

        {
          inactive_days: value,
        }
      ),
    },
    withPredefinedInactiveUsersScope(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_inactive_users_scope: converted,
      }
    ),
    withPredefinedInactiveUsersScopeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_inactive_users_scope+: converted,
      }
    ),
  },
  remediationSettings:: {
    local block = self,

    new(accessApproved, accessRevoked, noResponse):: (
      {}
      + block.withAccessApproved(accessApproved)
      + block.withAccessRevoked(accessRevoked)
      + block.withNoResponse(noResponse)
    ),

    "#withAccessApproved":: "Specifies the action by default if the reviewer approves access. NO_ACTION indicates there is no remediation action and the user retains access.",
    withAccessApproved(value):: (
      assert std.isString(value) : '"access_approved" expected to be of type "string"';

      {
        access_approved: value,
      }
    ),

    "#withAccessRevoked":: "Specifies the action if the reviewer revokes access. NO_ACTION indicates the user retains the same access. DENY indicates the user will have their access revoked as long as they are not assigned to a group through Group Rules.",
    withAccessRevoked(value):: (
      assert std.isString(value) : '"access_revoked" expected to be of type "string"';

      {
        access_revoked: value,
      }
    ),

    "#withNoResponse":: "Specifies the action if the reviewer doesn't respond to the request or if the campaign is closed before an action is taken.",
    withNoResponse(value):: (
      assert std.isString(value) : '"no_response" expected to be of type "string"';

      {
        no_response: value,
      }
    ),

    autoRemediationSettings:: {
      local block = self,

      new():: (
        {}
      ),

      "#withIncludeAllIndirectAssignments":: "If true, all indirect assignments will be included in the campaign. If false, only direct assignments will be included.",
      withIncludeAllIndirectAssignments(value):: (
        assert std.isBoolean(value) : '"include_all_indirect_assignments" expected to be of type "bool"';

        {
          include_all_indirect_assignments: value,
        }
      ),

      includeOnly:: {
        local block = self,

        new():: (
          {}
        ),

        "#withResourceId":: "The ID of the resource to include in the campaign.",
        withResourceId(value):: (
          assert std.isString(value) : '"resource_id" expected to be of type "string"';

          {
            resource_id: value,
          }
        ),

        "#withResourceType":: "The type of the resource to include in the campaign. Valid values are 'APPLICATION', 'GROUP', 'ENTITLEMENT', 'ENTITLEMENT_BUNDLE'.",
        withResourceType(value):: (
          assert std.isString(value) : '"resource_type" expected to be of type "string"';

          {
            resource_type: value,
          }
        ),
      },
      withIncludeOnly(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          include_only: converted,
        }
      ),
      withIncludeOnlyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          include_only+: converted,
        }
      ),
    },
    withAutoRemediationSettings(value):: (
      {
        auto_remediation_settings: value,
      }
    ),
  },
  resourceSettings:: {
    local block = self,

    new(type):: (
      {}
      + block.withType(type)
    ),

    "#withIncludeAdminRoles":: "Include admin roles.",
    withIncludeAdminRoles(value):: (
      assert std.isBoolean(value) : '"include_admin_roles" expected to be of type "bool"';

      {
        include_admin_roles: value,
      }
    ),

    "#withIncludeEntitlements":: "Include entitlements for this application. This property is only applicable if resource_type = APPLICATION and Entitlement Management is enabled.",
    withIncludeEntitlements(value):: (
      assert std.isBoolean(value) : '"include_entitlements" expected to be of type "bool"';

      {
        include_entitlements: value,
      }
    ),

    "#withIndividuallyAssignedAppsOnly":: "Only include individually assigned apps. This is only applicable if campaign type is USER.",
    withIndividuallyAssignedAppsOnly(value):: (
      assert std.isBoolean(value) : '"individually_assigned_apps_only" expected to be of type "bool"';

      {
        individually_assigned_apps_only: value,
      }
    ),

    "#withIndividuallyAssignedGroupsOnly":: "Only include individually assigned groups. This is only applicable if campaign type is USER.",
    withIndividuallyAssignedGroupsOnly(value):: (
      assert std.isBoolean(value) : '"individually_assigned_groups_only" expected to be of type "bool"';

      {
        individually_assigned_groups_only: value,
      }
    ),

    "#withOnlyIncludeOutOfPolicyEntitlements":: "Only include out-of-policy entitlements. Only applicable if resource_type = APPLICATION and Entitlement Management is enabled.",
    withOnlyIncludeOutOfPolicyEntitlements(value):: (
      assert std.isBoolean(value) : '"only_include_out_of_policy_entitlements" expected to be of type "bool"';

      {
        only_include_out_of_policy_entitlements: value,
      }
    ),

    "#withType":: "The type of Okta resource.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    excludedResources:: {
      local block = self,

      new():: (
        {}
      ),

      "#withResourceId":: "The ID of the resource to exclude in the campaign.",
      withResourceId(value):: (
        assert std.isString(value) : '"resource_id" expected to be of type "string"';

        {
          resource_id: value,
        }
      ),

      "#withResourceType":: "The type of resource to exclude in the campaign.",
      withResourceType(value):: (
        assert std.isString(value) : '"resource_type" expected to be of type "string"';

        {
          resource_type: value,
        }
      ),
    },
    targetResources:: {
      local block = self,

      new(resourceId, resourceType):: (
        {}
        + block.withResourceId(resourceId)
        + block.withResourceType(resourceType)
      ),

      "#withIncludeAllEntitlementsAndBundles":: "Include all entitlements and entitlement bundles for this application. Only applicable if the resourcetype = APPLICATION and Entitlement Management is enabled.",
      withIncludeAllEntitlementsAndBundles(value):: (
        assert std.isBoolean(value) : '"include_all_entitlements_and_bundles" expected to be of type "bool"';

        {
          include_all_entitlements_and_bundles: value,
        }
      ),

      "#withResourceId":: "The resource ID that is being reviewed.",
      withResourceId(value):: (
        assert std.isString(value) : '"resource_id" expected to be of type "string"';

        {
          resource_id: value,
        }
      ),

      "#withResourceType":: "The type of Okta resource.",
      withResourceType(value):: (
        assert std.isString(value) : '"resource_type" expected to be of type "string"';

        {
          resource_type: value,
        }
      ),

      entitlementBundles:: {
        local block = self,

        new(id):: (
          {}
          + block.withId(id)
        ),

        "#withId":: "The ID of the entitlement bundle.",
        withId(value):: (
          assert std.isString(value) : '"id" expected to be of type "string"';

          {
            id: value,
          }
        ),
      },
      entitlements:: {
        local block = self,

        new(id):: (
          {}
          + block.withId(id)
        ),

        "#withId":: "The entitlement id.",
        withId(value):: (
          assert std.isString(value) : '"id" expected to be of type "string"';

          {
            id: value,
          }
        ),

        "#withIncludeAllValues":: "Whether to include all entitlement values. If false we must provide the values property.",
        withIncludeAllValues(value):: (
          assert std.isBoolean(value) : '"include_all_values" expected to be of type "bool"';

          {
            include_all_values: value,
          }
        ),

        values:: {
          local block = self,

          new(id):: (
            {}
            + block.withId(id)
          ),

          "#withId":: "The entitlement value id.",
          withId(value):: (
            assert std.isString(value) : '"id" expected to be of type "string"';

            {
              id: value,
            }
          ),
        },
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            values+: converted,
          }
        ),
      },
      withEntitlementBundles(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          entitlement_bundles: converted,
        }
      ),
      withEntitlements(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          entitlements: converted,
        }
      ),
      withEntitlementBundlesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          entitlement_bundles+: converted,
        }
      ),
      withEntitlementsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          entitlements+: converted,
        }
      ),
    },
    withExcludedResources(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        excluded_resources: converted,
      }
    ),
    withTargetResources(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_resources: converted,
      }
    ),
    withExcludedResourcesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        excluded_resources+: converted,
      }
    ),
    withTargetResourcesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_resources+: converted,
      }
    ),
  },
  reviewerSettings:: {
    local block = self,

    new(type):: (
      {}
      + block.withType(type)
    ),

    "#withBulkDecisionDisabled":: "When approving or revoking review items, bulk actions are disabled if true.",
    withBulkDecisionDisabled(value):: (
      assert std.isBoolean(value) : '"bulk_decision_disabled" expected to be of type "bool"';

      {
        bulk_decision_disabled: value,
      }
    ),

    "#withFallbackReviewerId":: "The ID of the fallback reviewer. Required when the type=`REVIEWER_EXPRESSION` or type=`RESOURCE_OWNER`",
    withFallbackReviewerId(value):: (
      assert std.isString(value) : '"fallback_reviewer_id" expected to be of type "string"';

      {
        fallback_reviewer_id: value,
      }
    ),

    "#withJustificationRequired":: "When approving or revoking review items, a justification is required if true.",
    withJustificationRequired(value):: (
      assert std.isBoolean(value) : '"justification_required" expected to be of type "bool"';

      {
        justification_required: value,
      }
    ),

    "#withReassignmentDisabled":: "Reassignment is disabled for reviewers if true.",
    withReassignmentDisabled(value):: (
      assert std.isBoolean(value) : '"reassignment_disabled" expected to be of type "bool"';

      {
        reassignment_disabled: value,
      }
    ),

    "#withReviewerGroupId":: "The ID of the reviewer group to which the reviewer is assigned.",
    withReviewerGroupId(value):: (
      assert std.isString(value) : '"reviewer_group_id" expected to be of type "string"';

      {
        reviewer_group_id: value,
      }
    ),

    withReviewerId(value):: (
      assert std.isString(value) : '"reviewer_id" expected to be of type "string"';

      {
        reviewer_id: value,
      }
    ),

    "#withReviewerScopeExpression":: "This property is required when type=`USER`",
    withReviewerScopeExpression(value):: (
      assert std.isString(value) : '"reviewer_scope_expression" expected to be of type "string"';

      {
        reviewer_scope_expression: value,
      }
    ),

    "#withSelfReviewDisabled":: "This property is required to be true for resource-centric campaigns when the Okta Admin Console is one of the resources.",
    withSelfReviewDisabled(value):: (
      assert std.isBoolean(value) : '"self_review_disabled" expected to be of type "bool"';

      {
        self_review_disabled: value,
      }
    ),

    "#withType":: "Identifies the kind of reviewer for Access Certification.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    reviewerLevels:: {
      local block = self,

      new(type):: (
        {}
        + block.withType(type)
      ),

      "#withFallbackReviewerId":: "Required when the type=`REVIEWER_EXPRESSION` or type=`RESOURCE_OWNER`",
      withFallbackReviewerId(value):: (
        assert std.isString(value) : '"fallback_reviewer_id" expected to be of type "string"';

        {
          fallback_reviewer_id: value,
        }
      ),

      "#withReviewerGroupId":: "The ID of the reviewer group to which the reviewer is assigned.This property is required when type=`GROUP`",
      withReviewerGroupId(value):: (
        assert std.isString(value) : '"reviewer_group_id" expected to be of type "string"';

        {
          reviewer_group_id: value,
        }
      ),

      "#withReviewerId":: "The ID of the reviewer to which the reviewer is assigned.This property is required when type=`USER`.",
      withReviewerId(value):: (
        assert std.isString(value) : '"reviewer_id" expected to be of type "string"';

        {
          reviewer_id: value,
        }
      ),

      "#withReviewerScopeExpression":: "This property is required when type=`REVIEWER_EXPRESSION`",
      withReviewerScopeExpression(value):: (
        assert std.isString(value) : '"reviewer_scope_expression" expected to be of type "string"';

        {
          reviewer_scope_expression: value,
        }
      ),

      "#withSelfReviewDisabled":: "This property is used to prevent self review.",
      withSelfReviewDisabled(value):: (
        assert std.isBoolean(value) : '"self_review_disabled" expected to be of type "bool"';

        {
          self_review_disabled: value,
        }
      ),

      "#withType":: "Identifies the kind of reviewer.",
      withType(value):: (
        assert std.isString(value) : '"type" expected to be of type "string"';

        {
          type: value,
        }
      ),

      startReview:: {
        local block = self,

        new():: (
          {}
        ),

        "#withOnDay":: "The day of the campaign when the review starts. 0 means the first day of the campaign.",
        withOnDay(value):: (
          assert std.isNumber(value) : '"on_day" expected to be of type "number"';

          {
            on_day: value,
          }
        ),

        "#withWhen":: "The condition for which, the lower level reviews will move to that level for further review.",
        withWhen(value):: (
          assert std.isString(value) : '"when" expected to be of type "string"';

          {
            when: value,
          }
        ),
      },
      withStartReview(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          start_review: converted,
        }
      ),
      withStartReviewMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          start_review+: converted,
        }
      ),
    },
    withReviewerLevels(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        reviewer_levels: converted,
      }
    ),
    withReviewerLevelsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        reviewer_levels+: converted,
      }
    ),
  },
  scheduleSettings:: {
    local block = self,

    new(durationInDays, startDate, timeZone, type):: (
      {}
      + block.withDurationInDays(durationInDays)
      + block.withStartDate(startDate)
      + block.withTimeZone(timeZone)
      + block.withType(type)
    ),

    "#withDurationInDays":: "The duration (in days) that the campaign is active.",
    withDurationInDays(value):: (
      assert std.isNumber(value) : '"duration_in_days" expected to be of type "number"';

      {
        duration_in_days: value,
      }
    ),

    withEndDate(value):: (
      assert std.isString(value) : '"end_date" expected to be of type "string"';

      {
        end_date: value,
      }
    ),

    "#withStartDate":: "The date on which the campaign is supposed to start. Accepts date in ISO 8601 format.",
    withStartDate(value):: (
      assert std.isString(value) : '"start_date" expected to be of type "string"';

      {
        start_date: value,
      }
    ),

    "#withTimeZone":: "The time zone in which the campaign is active.",
    withTimeZone(value):: (
      assert std.isString(value) : '"time_zone" expected to be of type "string"';

      {
        time_zone: value,
      }
    ),

    "#withType":: "The type of campaign being scheduled.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    recurrence:: {
      local block = self,

      new(interval):: (
        {}
        + block.withInterval(interval)
      ),

      "#withEnds":: "Specifies when the recurring schedule can have an end.",
      withEnds(value):: (
        assert std.isString(value) : '"ends" expected to be of type "string"';

        {
          ends: value,
        }
      ),

      "#withInterval":: "Recurrence interval specified according to ISO8061 notation for durations.",
      withInterval(value):: (
        assert std.isString(value) : '"interval" expected to be of type "string"';

        {
          interval: value,
        }
      ),

      "#withRepeatOnType":: "Specifies when the recurring schedule can have an end.",
      withRepeatOnType(value):: (
        assert std.isString(value) : '"repeat_on_type" expected to be of type "string"';

        {
          repeat_on_type: value,
        }
      ),
    },
    withRecurrence(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recurrence: converted,
      }
    ),
    withRecurrenceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recurrence+: converted,
      }
    ),
  },
  withNotificationSettings(value):: (
    {
      notification_settings: value,
    }
  ),
  withPrincipalScopeSettings(value):: (
    {
      principal_scope_settings: value,
    }
  ),
  withRemediationSettings(value):: (
    {
      remediation_settings: value,
    }
  ),
  withResourceSettings(value):: (
    {
      resource_settings: value,
    }
  ),
  withReviewerSettings(value):: (
    {
      reviewer_settings: value,
    }
  ),
  withScheduleSettings(value):: (
    {
      schedule_settings: value,
    }
  ),
}

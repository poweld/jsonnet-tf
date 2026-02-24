{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_campaign",
          type:: "data",
          attributes:: ["campaign_type", "created", "created_by", "description", "id", "last_updated", "last_updated_by", "name", "recurring_campaign_id", "status"],
        },
      },
    }
  ),

  "#withCampaignType":: "Identifies if it is a resource campaign or a user campaign. By default it is RESOURCE.",
  withCampaignType(value):: (
    assert std.isString(value) : '"campaign_type" expected to be of type "string"';

    {
      campaign_type: value,
    }
  ),

  "#withDescription":: "Human readable description.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withId":: "Unique identifier for the object.",
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

  notificationSettings:: {
    local block = self,

    new():: (
      {}
    ),
  },
  principalScopeSettings:: {
    local block = self,

    new():: (
      {}
    ),

    predefinedInactiveUsersScope:: {
      local block = self,

      new():: (
        {}
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

    new():: (
      {}
    ),

    autoRemediationSettings:: {
      local block = self,

      new():: (
        {}
      ),

      "#withIncludeAllIndirectAssignments":: "When a group is selected to be automatically remediated.",
      withIncludeAllIndirectAssignments(value):: (
        assert std.isBoolean(value) : '"include_all_indirect_assignments" expected to be of type "bool"';

        {
          include_all_indirect_assignments: value,
        }
      ),

      includeOnly:: {
        local block = self,

        new(resourceId, resourceType):: (
          {}
          + block.withResourceId(resourceId)
          + block.withResourceType(resourceType)
        ),

        "#withResourceId":: "The resource ID of the target resource When type = GROUP, it will point to the group ID.",
        withResourceId(value):: (
          assert std.isString(value) : '"resource_id" expected to be of type "string"';

          {
            resource_id: value,
          }
        ),

        "#withResourceType":: "The type of the resource to be automatically remediated. Only GROUP is supported.",
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

    new():: (
      {}
    ),

    "#withIncludeAdminRoles":: "Include admin roles.",
    withIncludeAdminRoles(value):: (
      assert std.isBoolean(value) : '"include_admin_roles" expected to be of type "bool"';

      {
        include_admin_roles: value,
      }
    ),

    "#withIncludeEntitlements":: "Include entitlements for this application.",
    withIncludeEntitlements(value):: (
      assert std.isBoolean(value) : '"include_entitlements" expected to be of type "bool"';

      {
        include_entitlements: value,
      }
    ),

    "#withIndividuallyAssignedAppsOnly":: "Only include individually assigned groups.",
    withIndividuallyAssignedAppsOnly(value):: (
      assert std.isBoolean(value) : '"individually_assigned_apps_only" expected to be of type "bool"';

      {
        individually_assigned_apps_only: value,
      }
    ),

    "#withIndividuallyAssignedGroupsOnly":: "Only include individually assigned groups.",
    withIndividuallyAssignedGroupsOnly(value):: (
      assert std.isBoolean(value) : '"individually_assigned_groups_only" expected to be of type "bool"';

      {
        individually_assigned_groups_only: value,
      }
    ),

    "#withOnlyIncludeOutOfPolicyEntitlements":: "Only include out-of-policy entitlements.",
    withOnlyIncludeOutOfPolicyEntitlements(value):: (
      assert std.isBoolean(value) : '"only_include_out_of_policy_entitlements" expected to be of type "bool"';

      {
        only_include_out_of_policy_entitlements: value,
      }
    ),

    excludedResources:: {
      local block = self,

      new():: (
        {}
      ),
    },
    targetResources:: {
      local block = self,

      new(resourceId):: (
        {}
        + block.withResourceId(resourceId)
      ),

      "#withResourceId":: "The resource ID that is being reviewed.",
      withResourceId(value):: (
        assert std.isString(value) : '"resource_id" expected to be of type "string"';

        {
          resource_id: value,
        }
      ),

      entitlementBundles:: {
        local block = self,

        new(id):: (
          {}
          + block.withId(id)
        ),

        "#withId":: "The id of the entitlement bundle.",
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

        "#withId":: "The id of the entitlement.",
        withId(value):: (
          assert std.isString(value) : '"id" expected to be of type "string"';

          {
            id: value,
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

    new():: (
      {}
    ),

    reviewerLevels:: {
      local block = self,

      new():: (
        {}
      ),

      startReview:: {
        local block = self,

        new():: (
          {}
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

    new():: (
      {}
    ),

    recurrence:: {
      local block = self,

      new():: (
        {}
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

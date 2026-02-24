{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_review",
          type:: "data",
          attributes:: ["campaign_id", "created", "created_by", "current_reviewer_level", "decided", "decision", "id", "last_updated", "last_updated_by", "remediation_status", "resource_id", "reviewer_type"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "Unique identifier for the Review.",
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

  allReviewerLevels:: {
    local block = self,

    new():: (
      {}
    ),

    reviewerGroupProfile:: {
      local block = self,

      new():: (
        {}
      ),
    },
    reviewerProfile:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withReviewerGroupProfile(value):: (
      {
        reviewer_group_profile: value,
      }
    ),
    withReviewerProfile(value):: (
      {
        reviewer_profile: value,
      }
    ),
  },
  entitlementBundle:: {
    local block = self,

    new():: (
      {}
    ),
  },
  entitlementValue:: {
    local block = self,

    new():: (
      {}
    ),
  },
  links:: {
    local block = self,

    new():: (
      {}
    ),

    withReassignReviewHref(value):: (
      assert std.isString(value) : '"reassign_review_href" expected to be of type "string"';

      {
        reassign_review_href: value,
      }
    ),

    withSelfHref(value):: (
      assert std.isString(value) : '"self_href" expected to be of type "string"';

      {
        self_href: value,
      }
    ),
  },
  note:: {
    local block = self,

    new():: (
      {}
    ),
  },
  principalProfile:: {
    local block = self,

    new():: (
      {}
    ),
  },
  reviewerProfile:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withAllReviewerLevels(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      all_reviewer_levels: converted,
    }
  ),
  withEntitlementBundle(value):: (
    {
      entitlement_bundle: value,
    }
  ),
  withEntitlementValue(value):: (
    {
      entitlement_value: value,
    }
  ),
  withLinks(value):: (
    {
      links: value,
    }
  ),
  withNote(value):: (
    {
      note: value,
    }
  ),
  withPrincipalProfile(value):: (
    {
      principal_profile: value,
    }
  ),
  withReviewerProfile(value):: (
    {
      reviewer_profile: value,
    }
  ),
  withAllReviewerLevelsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      all_reviewer_levels+: converted,
    }
  ),
}

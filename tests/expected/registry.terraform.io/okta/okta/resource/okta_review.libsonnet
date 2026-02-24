{
  local block = self,

  new(terraformName, campaignId, note, reviewIds, reviewerId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_review",
          type:: "resource",
          attributes:: ["campaign_id", "created", "created_by", "decision", "id", "last_updated", "last_updated_by", "note", "resource_id", "review_ids", "reviewer_id", "reviewer_level", "reviewer_type"],
        },
      },
    }
    + block.withCampaignId(campaignId)
    + block.withNote(note)
    + block.withReviewIds(reviewIds)
    + block.withReviewerId(reviewerId)
  ),

  "#withCampaignId":: "The id of the campaign.",
  withCampaignId(value):: (
    assert std.isString(value) : '"campaign_id" expected to be of type "string"';

    {
      campaign_id: value,
    }
  ),

  "#withNote":: "A note to justify the reassignment decision for the specified review.",
  withNote(value):: (
    assert std.isString(value) : '"note" expected to be of type "string"';

    {
      note: value,
    }
  ),

  "#withReviewIds":: "A list of reviews (review id values) that are reassigned to the new reviewer.",
  withReviewIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"review_ids" expected to be of type "list"';

    {
      review_ids: converted,
    }
  ),

  "#withReviewIdsMixin":: "A list of reviews (review id values) that are reassigned to the new reviewer.",
  withReviewIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"review_ids" expected to be of type "list"';

    {
      review_ids+: converted,
    }
  ),

  "#withReviewerId":: "The Okta user id of the new reviewer.",
  withReviewerId(value):: (
    assert std.isString(value) : '"reviewer_id" expected to be of type "string"';

    {
      reviewer_id: value,
    }
  ),

  "#withReviewerLevel":: "Identifies the reviewer level of each reviews during access certification. Applicable for multi level campaigns only.",
  withReviewerLevel(value):: (
    assert std.isString(value) : '"reviewer_level" expected to be of type "string"';

    {
      reviewer_level: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

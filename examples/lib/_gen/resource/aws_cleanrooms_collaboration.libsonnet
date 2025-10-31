{
  local block = self,
  new(terraformName, creatorDisplayName, creatorMemberAbilities, description, name, queryLogStatus):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cleanrooms_collaboration",
          type:: "resource",
          attributes:: ["analytics_engine", "arn", "create_time", "creator_display_name", "creator_member_abilities", "description", "id", "name", "query_log_status", "region", "tags", "tags_all", "update_time"],
        },
      },
    }
    + block.withCreatorDisplayName(creatorDisplayName)
    + block.withCreatorMemberAbilities(creatorMemberAbilities)
    + block.withDescription(description)
    + block.withName(name)
    + block.withQueryLogStatus(queryLogStatus)
  ),
  withAnalyticsEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"analytics_engine" expected to be of type "string"';
    {
      analytics_engine: converted,
    }
  ),
  withCreatorDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"creator_display_name" expected to be of type "string"';
    {
      creator_display_name: converted,
    }
  ),
  withCreatorMemberAbilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"creator_member_abilities" expected to be of type "list"';
    {
      creator_member_abilities: converted,
    }
  ),
  withCreatorMemberAbilitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"creator_member_abilities" expected to be of type "list"';
    {
      creator_member_abilities+: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withQueryLogStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_log_status" expected to be of type "string"';
    {
      query_log_status: converted,
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
  data_encryption_metadata:: {
    local block = self,
    new(allowClearText, allowDuplicates, allowJoinsOnColumnsWithDifferentNames, preserveNulls):: (
      {}
      + block.withAllowClearText(allowClearText)
      + block.withAllowDuplicates(allowDuplicates)
      + block.withAllowJoinsOnColumnsWithDifferentNames(allowJoinsOnColumnsWithDifferentNames)
      + block.withPreserveNulls(preserveNulls)
    ),
    withAllowClearText(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_clear_text" expected to be of type "bool"';
      {
        allow_clear_text: converted,
      }
    ),
    withAllowDuplicates(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_duplicates" expected to be of type "bool"';
      {
        allow_duplicates: converted,
      }
    ),
    withAllowJoinsOnColumnsWithDifferentNames(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_joins_on_columns_with_different_names" expected to be of type "bool"';
      {
        allow_joins_on_columns_with_different_names: converted,
      }
    ),
    withPreserveNulls(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"preserve_nulls" expected to be of type "bool"';
      {
        preserve_nulls: converted,
      }
    ),
  },
  member:: {
    local block = self,
    new(accountId, displayName, memberAbilities):: (
      {}
      + block.withAccountId(accountId)
      + block.withDisplayName(displayName)
      + block.withMemberAbilities(memberAbilities)
    ),
    withAccountId(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    withDisplayName(value):: (
      local converted = value;
      assert std.isString(converted) : '"display_name" expected to be of type "string"';
      {
        display_name: converted,
      }
    ),
    withMemberAbilities(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"member_abilities" expected to be of type "list"';
      {
        member_abilities: converted,
      }
    ),
    withMemberAbilitiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"member_abilities" expected to be of type "list"';
      {
        member_abilities+: converted,
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
  withDataEncryptionMetadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_encryption_metadata: value,
    }
  ),
  withMember(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDataEncryptionMetadataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_encryption_metadata+: converted,
    }
  ),
  withMemberMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member+: converted,
    }
  ),
}

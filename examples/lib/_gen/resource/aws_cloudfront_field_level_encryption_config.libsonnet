{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_field_level_encryption_config",
          type:: "resource",
          attributes:: ["arn", "caller_reference", "comment", "etag", "id"],
        },
      },
    }
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  content_type_profile_config:: {
    local block = self,
    new(forwardWhenContentTypeIsUnknown):: (
      {}
      + block.withForwardWhenContentTypeIsUnknown(forwardWhenContentTypeIsUnknown)
    ),
    withForwardWhenContentTypeIsUnknown(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"forward_when_content_type_is_unknown" expected to be of type "bool"';
      {
        forward_when_content_type_is_unknown: converted,
      }
    ),
    content_type_profiles:: {
      local block = self,
      new():: (
        {}
      ),
      items:: {
        local block = self,
        new(contentType, format):: (
          {}
          + block.withContentType(contentType)
          + block.withFormat(format)
        ),
        withContentType(value):: (
          local converted = value;
          assert std.isString(converted) : '"content_type" expected to be of type "string"';
          {
            content_type: converted,
          }
        ),
        withFormat(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        withProfileId(value):: (
          local converted = value;
          assert std.isString(converted) : '"profile_id" expected to be of type "string"';
          {
            profile_id: converted,
          }
        ),
      },
      withItems(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          items: value,
        }
      ),
      withItemsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          items+: converted,
        }
      ),
    },
    withContentTypeProfiles(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_profiles: value,
      }
    ),
    withContentTypeProfilesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_profiles+: converted,
      }
    ),
  },
  query_arg_profile_config:: {
    local block = self,
    new(forwardWhenQueryArgProfileIsUnknown):: (
      {}
      + block.withForwardWhenQueryArgProfileIsUnknown(forwardWhenQueryArgProfileIsUnknown)
    ),
    withForwardWhenQueryArgProfileIsUnknown(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"forward_when_query_arg_profile_is_unknown" expected to be of type "bool"';
      {
        forward_when_query_arg_profile_is_unknown: converted,
      }
    ),
    query_arg_profiles:: {
      local block = self,
      new():: (
        {}
      ),
      items:: {
        local block = self,
        new(profileId, queryArg):: (
          {}
          + block.withProfileId(profileId)
          + block.withQueryArg(queryArg)
        ),
        withProfileId(value):: (
          local converted = value;
          assert std.isString(converted) : '"profile_id" expected to be of type "string"';
          {
            profile_id: converted,
          }
        ),
        withQueryArg(value):: (
          local converted = value;
          assert std.isString(converted) : '"query_arg" expected to be of type "string"';
          {
            query_arg: converted,
          }
        ),
      },
      withItems(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          items: value,
        }
      ),
      withItemsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          items+: converted,
        }
      ),
    },
    withQueryArgProfiles(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_arg_profiles: value,
      }
    ),
    withQueryArgProfilesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_arg_profiles+: converted,
      }
    ),
  },
  withContentTypeProfileConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_type_profile_config: value,
    }
  ),
  withQueryArgProfileConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_arg_profile_config: value,
    }
  ),
  withContentTypeProfileConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      content_type_profile_config+: converted,
    }
  ),
  withQueryArgProfileConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_arg_profile_config+: converted,
    }
  ),
}

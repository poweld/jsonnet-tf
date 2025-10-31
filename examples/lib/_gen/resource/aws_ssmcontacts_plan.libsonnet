{
  local block = self,
  new(terraformName, contactId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssmcontacts_plan",
          type:: "resource",
          attributes:: ["contact_id", "id", "region"],
        },
      },
    }
    + block.withContactId(contactId)
  ),
  withContactId(value):: (
    local converted = value;
    assert std.isString(converted) : '"contact_id" expected to be of type "string"';
    {
      contact_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  stage:: {
    local block = self,
    new(durationInMinutes):: (
      {}
      + block.withDurationInMinutes(durationInMinutes)
    ),
    withDurationInMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"duration_in_minutes" expected to be of type "number"';
      {
        duration_in_minutes: converted,
      }
    ),
    target:: {
      local block = self,
      new():: (
        {}
      ),
      channel_target_info:: {
        local block = self,
        new(contactChannelId):: (
          {}
          + block.withContactChannelId(contactChannelId)
        ),
        withContactChannelId(value):: (
          local converted = value;
          assert std.isString(converted) : '"contact_channel_id" expected to be of type "string"';
          {
            contact_channel_id: converted,
          }
        ),
        withRetryIntervalInMinutes(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"retry_interval_in_minutes" expected to be of type "number"';
          {
            retry_interval_in_minutes: converted,
          }
        ),
      },
      contact_target_info:: {
        local block = self,
        new(isEssential):: (
          {}
          + block.withIsEssential(isEssential)
        ),
        withContactId(value):: (
          local converted = value;
          assert std.isString(converted) : '"contact_id" expected to be of type "string"';
          {
            contact_id: converted,
          }
        ),
        withIsEssential(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_essential" expected to be of type "bool"';
          {
            is_essential: converted,
          }
        ),
      },
      withChannelTargetInfo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          channel_target_info: value,
        }
      ),
      withContactTargetInfo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          contact_target_info: value,
        }
      ),
      withChannelTargetInfoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          channel_target_info+: converted,
        }
      ),
      withContactTargetInfoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          contact_target_info+: converted,
        }
      ),
    },
    withTarget(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target: value,
      }
    ),
    withTargetMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target+: converted,
      }
    ),
  },
  withStage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage: value,
    }
  ),
  withStageMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stage+: converted,
    }
  ),
}

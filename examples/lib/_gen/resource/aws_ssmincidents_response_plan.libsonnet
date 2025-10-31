{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssmincidents_response_plan",
          type:: "resource",
          attributes:: ["arn", "chat_channel", "display_name", "engagements", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withChatChannel(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"chat_channel" expected to be of type "set"';
    {
      chat_channel: converted,
    }
  ),
  withChatChannelMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"chat_channel" expected to be of type "set"';
    {
      chat_channel+: converted,
    }
  ),
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  withEngagements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"engagements" expected to be of type "set"';
    {
      engagements: converted,
    }
  ),
  withEngagementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"engagements" expected to be of type "set"';
    {
      engagements+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  action:: {
    local block = self,
    new():: (
      {}
    ),
    ssm_automation:: {
      local block = self,
      new(documentName, roleArn):: (
        {}
        + block.withDocumentName(documentName)
        + block.withRoleArn(roleArn)
      ),
      withDocumentName(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_name" expected to be of type "string"';
        {
          document_name: converted,
        }
      ),
      withDocumentVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_version" expected to be of type "string"';
        {
          document_version: converted,
        }
      ),
      withDynamicParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"dynamic_parameters" expected to be of type "map"';
        {
          dynamic_parameters: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withTargetAccount(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_account" expected to be of type "string"';
        {
          target_account: converted,
        }
      ),
      parameter:: {
        local block = self,
        new(name, values):: (
          {}
          + block.withName(name)
          + block.withValues(values)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      withParameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter: value,
        }
      ),
      withParameterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter+: converted,
        }
      ),
    },
    withSsmAutomation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_automation: value,
      }
    ),
    withSsmAutomationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_automation+: converted,
      }
    ),
  },
  incident_template:: {
    local block = self,
    new(impact, title):: (
      {}
      + block.withImpact(impact)
      + block.withTitle(title)
    ),
    withDedupeString(value):: (
      local converted = value;
      assert std.isString(converted) : '"dedupe_string" expected to be of type "string"';
      {
        dedupe_string: converted,
      }
    ),
    withImpact(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"impact" expected to be of type "number"';
      {
        impact: converted,
      }
    ),
    withIncidentTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"incident_tags" expected to be of type "map"';
      {
        incident_tags: converted,
      }
    ),
    withSummary(value):: (
      local converted = value;
      assert std.isString(converted) : '"summary" expected to be of type "string"';
      {
        summary: converted,
      }
    ),
    withTitle(value):: (
      local converted = value;
      assert std.isString(converted) : '"title" expected to be of type "string"';
      {
        title: converted,
      }
    ),
    notification_target:: {
      local block = self,
      new(snsTopicArn):: (
        {}
        + block.withSnsTopicArn(snsTopicArn)
      ),
      withSnsTopicArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
        {
          sns_topic_arn: converted,
        }
      ),
    },
    withNotificationTarget(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_target: value,
      }
    ),
    withNotificationTargetMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_target+: converted,
      }
    ),
  },
  integration:: {
    local block = self,
    new():: (
      {}
    ),
    pagerduty:: {
      local block = self,
      new(name, secretId, serviceId):: (
        {}
        + block.withName(name)
        + block.withSecretId(secretId)
        + block.withServiceId(serviceId)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withSecretId(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_id" expected to be of type "string"';
        {
          secret_id: converted,
        }
      ),
      withServiceId(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_id" expected to be of type "string"';
        {
          service_id: converted,
        }
      ),
    },
    withPagerduty(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pagerduty: value,
      }
    ),
    withPagerdutyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pagerduty+: converted,
      }
    ),
  },
  withAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  withIncidentTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incident_template: value,
    }
  ),
  withIntegration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      integration: value,
    }
  ),
  withActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  withIncidentTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      incident_template+: converted,
    }
  ),
  withIntegrationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      integration+: converted,
    }
  ),
}

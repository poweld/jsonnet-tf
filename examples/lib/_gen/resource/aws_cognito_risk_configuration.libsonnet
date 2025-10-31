{
  local block = self,
  new(terraformName, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_risk_configuration",
          type:: "resource",
          attributes:: ["client_id", "id", "region", "user_pool_id"],
        },
      },
    }
    + block.withUserPoolId(userPoolId)
  ),
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
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
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  account_takeover_risk_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    actions:: {
      local block = self,
      new():: (
        {}
      ),
      high_action:: {
        local block = self,
        new(eventAction, notify):: (
          {}
          + block.withEventAction(eventAction)
          + block.withNotify(notify)
        ),
        withEventAction(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_action" expected to be of type "string"';
          {
            event_action: converted,
          }
        ),
        withNotify(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"notify" expected to be of type "bool"';
          {
            notify: converted,
          }
        ),
      },
      low_action:: {
        local block = self,
        new(eventAction, notify):: (
          {}
          + block.withEventAction(eventAction)
          + block.withNotify(notify)
        ),
        withEventAction(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_action" expected to be of type "string"';
          {
            event_action: converted,
          }
        ),
        withNotify(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"notify" expected to be of type "bool"';
          {
            notify: converted,
          }
        ),
      },
      medium_action:: {
        local block = self,
        new(eventAction, notify):: (
          {}
          + block.withEventAction(eventAction)
          + block.withNotify(notify)
        ),
        withEventAction(value):: (
          local converted = value;
          assert std.isString(converted) : '"event_action" expected to be of type "string"';
          {
            event_action: converted,
          }
        ),
        withNotify(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"notify" expected to be of type "bool"';
          {
            notify: converted,
          }
        ),
      },
      withHighAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          high_action: value,
        }
      ),
      withLowAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          low_action: value,
        }
      ),
      withMediumAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          medium_action: value,
        }
      ),
      withHighActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          high_action+: converted,
        }
      ),
      withLowActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          low_action+: converted,
        }
      ),
      withMediumActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          medium_action+: converted,
        }
      ),
    },
    notify_configuration:: {
      local block = self,
      new(sourceArn):: (
        {}
        + block.withSourceArn(sourceArn)
      ),
      withFrom(value):: (
        local converted = value;
        assert std.isString(converted) : '"from" expected to be of type "string"';
        {
          from: converted,
        }
      ),
      withReplyTo(value):: (
        local converted = value;
        assert std.isString(converted) : '"reply_to" expected to be of type "string"';
        {
          reply_to: converted,
        }
      ),
      withSourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_arn" expected to be of type "string"';
        {
          source_arn: converted,
        }
      ),
      block_email:: {
        local block = self,
        new(htmlBody, subject, textBody):: (
          {}
          + block.withHtmlBody(htmlBody)
          + block.withSubject(subject)
          + block.withTextBody(textBody)
        ),
        withHtmlBody(value):: (
          local converted = value;
          assert std.isString(converted) : '"html_body" expected to be of type "string"';
          {
            html_body: converted,
          }
        ),
        withSubject(value):: (
          local converted = value;
          assert std.isString(converted) : '"subject" expected to be of type "string"';
          {
            subject: converted,
          }
        ),
        withTextBody(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_body" expected to be of type "string"';
          {
            text_body: converted,
          }
        ),
      },
      mfa_email:: {
        local block = self,
        new(htmlBody, subject, textBody):: (
          {}
          + block.withHtmlBody(htmlBody)
          + block.withSubject(subject)
          + block.withTextBody(textBody)
        ),
        withHtmlBody(value):: (
          local converted = value;
          assert std.isString(converted) : '"html_body" expected to be of type "string"';
          {
            html_body: converted,
          }
        ),
        withSubject(value):: (
          local converted = value;
          assert std.isString(converted) : '"subject" expected to be of type "string"';
          {
            subject: converted,
          }
        ),
        withTextBody(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_body" expected to be of type "string"';
          {
            text_body: converted,
          }
        ),
      },
      no_action_email:: {
        local block = self,
        new(htmlBody, subject, textBody):: (
          {}
          + block.withHtmlBody(htmlBody)
          + block.withSubject(subject)
          + block.withTextBody(textBody)
        ),
        withHtmlBody(value):: (
          local converted = value;
          assert std.isString(converted) : '"html_body" expected to be of type "string"';
          {
            html_body: converted,
          }
        ),
        withSubject(value):: (
          local converted = value;
          assert std.isString(converted) : '"subject" expected to be of type "string"';
          {
            subject: converted,
          }
        ),
        withTextBody(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_body" expected to be of type "string"';
          {
            text_body: converted,
          }
        ),
      },
      withBlockEmail(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          block_email: value,
        }
      ),
      withMfaEmail(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mfa_email: value,
        }
      ),
      withNoActionEmail(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          no_action_email: value,
        }
      ),
      withBlockEmailMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          block_email+: converted,
        }
      ),
      withMfaEmailMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mfa_email+: converted,
        }
      ),
      withNoActionEmailMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          no_action_email+: converted,
        }
      ),
    },
    withActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions: value,
      }
    ),
    withNotifyConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notify_configuration: value,
      }
    ),
    withActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions+: converted,
      }
    ),
    withNotifyConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notify_configuration+: converted,
      }
    ),
  },
  compromised_credentials_risk_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withEventFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_filter" expected to be of type "set"';
      {
        event_filter: converted,
      }
    ),
    withEventFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_filter" expected to be of type "set"';
      {
        event_filter+: converted,
      }
    ),
    actions:: {
      local block = self,
      new(eventAction):: (
        {}
        + block.withEventAction(eventAction)
      ),
      withEventAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_action" expected to be of type "string"';
        {
          event_action: converted,
        }
      ),
    },
    withActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions: value,
      }
    ),
    withActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        actions+: converted,
      }
    ),
  },
  risk_exception_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withBlockedIpRangeList(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"blocked_ip_range_list" expected to be of type "set"';
      {
        blocked_ip_range_list: converted,
      }
    ),
    withBlockedIpRangeListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"blocked_ip_range_list" expected to be of type "set"';
      {
        blocked_ip_range_list+: converted,
      }
    ),
    withSkippedIpRangeList(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"skipped_ip_range_list" expected to be of type "set"';
      {
        skipped_ip_range_list: converted,
      }
    ),
    withSkippedIpRangeListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"skipped_ip_range_list" expected to be of type "set"';
      {
        skipped_ip_range_list+: converted,
      }
    ),
  },
  withAccountTakeoverRiskConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_takeover_risk_configuration: value,
    }
  ),
  withCompromisedCredentialsRiskConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compromised_credentials_risk_configuration: value,
    }
  ),
  withRiskExceptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      risk_exception_configuration: value,
    }
  ),
  withAccountTakeoverRiskConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_takeover_risk_configuration+: converted,
    }
  ),
  withCompromisedCredentialsRiskConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compromised_credentials_risk_configuration+: converted,
    }
  ),
  withRiskExceptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      risk_exception_configuration+: converted,
    }
  ),
}

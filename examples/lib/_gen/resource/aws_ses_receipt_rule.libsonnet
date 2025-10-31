{
  local block = self,
  new(terraformName, name, ruleSetName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ses_receipt_rule",
          type:: "resource",
          attributes:: ["after", "arn", "enabled", "id", "name", "recipients", "region", "rule_set_name", "scan_enabled", "tls_policy"],
        },
      },
    }
    + block.withName(name)
    + block.withRuleSetName(ruleSetName)
  ),
  withAfter(value):: (
    local converted = value;
    assert std.isString(converted) : '"after" expected to be of type "string"';
    {
      after: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  withRecipients(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recipients" expected to be of type "set"';
    {
      recipients: converted,
    }
  ),
  withRecipientsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recipients" expected to be of type "set"';
    {
      recipients+: converted,
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
  withRuleSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_set_name" expected to be of type "string"';
    {
      rule_set_name: converted,
    }
  ),
  withScanEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"scan_enabled" expected to be of type "bool"';
    {
      scan_enabled: converted,
    }
  ),
  withTlsPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"tls_policy" expected to be of type "string"';
    {
      tls_policy: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  add_header_action:: {
    local block = self,
    new(headerName, headerValue, position):: (
      {}
      + block.withHeaderName(headerName)
      + block.withHeaderValue(headerValue)
      + block.withPosition(position)
    ),
    withHeaderName(value):: (
      local converted = value;
      assert std.isString(converted) : '"header_name" expected to be of type "string"';
      {
        header_name: converted,
      }
    ),
    withHeaderValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"header_value" expected to be of type "string"';
      {
        header_value: converted,
      }
    ),
    withPosition(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
  },
  bounce_action:: {
    local block = self,
    new(message, position, sender, smtpReplyCode):: (
      {}
      + block.withMessage(message)
      + block.withPosition(position)
      + block.withSender(sender)
      + block.withSmtpReplyCode(smtpReplyCode)
    ),
    withMessage(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
    withPosition(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    withSender(value):: (
      local converted = value;
      assert std.isString(converted) : '"sender" expected to be of type "string"';
      {
        sender: converted,
      }
    ),
    withSmtpReplyCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"smtp_reply_code" expected to be of type "string"';
      {
        smtp_reply_code: converted,
      }
    ),
    withStatusCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_code" expected to be of type "string"';
      {
        status_code: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  lambda_action:: {
    local block = self,
    new(functionArn, position):: (
      {}
      + block.withFunctionArn(functionArn)
      + block.withPosition(position)
    ),
    withFunctionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"function_arn" expected to be of type "string"';
      {
        function_arn: converted,
      }
    ),
    withInvocationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"invocation_type" expected to be of type "string"';
      {
        invocation_type: converted,
      }
    ),
    withPosition(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  s3_action:: {
    local block = self,
    new(bucketName, position):: (
      {}
      + block.withBucketName(bucketName)
      + block.withPosition(position)
    ),
    withBucketName(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    withIamRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
      {
        iam_role_arn: converted,
      }
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    withObjectKeyPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_key_prefix" expected to be of type "string"';
      {
        object_key_prefix: converted,
      }
    ),
    withPosition(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  sns_action:: {
    local block = self,
    new(position, topicArn):: (
      {}
      + block.withPosition(position)
      + block.withTopicArn(topicArn)
    ),
    withEncoding(value):: (
      local converted = value;
      assert std.isString(converted) : '"encoding" expected to be of type "string"';
      {
        encoding: converted,
      }
    ),
    withPosition(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  stop_action:: {
    local block = self,
    new(position, scope):: (
      {}
      + block.withPosition(position)
      + block.withScope(scope)
    ),
    withPosition(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    withScope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  workmail_action:: {
    local block = self,
    new(organizationArn, position):: (
      {}
      + block.withOrganizationArn(organizationArn)
      + block.withPosition(position)
    ),
    withOrganizationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_arn" expected to be of type "string"';
      {
        organization_arn: converted,
      }
    ),
    withPosition(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"position" expected to be of type "number"';
      {
        position: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  withAddHeaderAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_header_action: value,
    }
  ),
  withBounceAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bounce_action: value,
    }
  ),
  withLambdaAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_action: value,
    }
  ),
  withS3Action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_action: value,
    }
  ),
  withSnsAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_action: value,
    }
  ),
  withStopAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_action: value,
    }
  ),
  withWorkmailAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workmail_action: value,
    }
  ),
  withAddHeaderActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_header_action+: converted,
    }
  ),
  withBounceActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bounce_action+: converted,
    }
  ),
  withLambdaActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_action+: converted,
    }
  ),
  withS3ActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_action+: converted,
    }
  ),
  withSnsActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns_action+: converted,
    }
  ),
  withStopActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_action+: converted,
    }
  ),
  withWorkmailActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workmail_action+: converted,
    }
  ),
}

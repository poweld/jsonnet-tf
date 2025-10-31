{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_user_pool",
          type:: "resource",
          attributes:: ["alias_attributes", "arn", "auto_verified_attributes", "creation_date", "custom_domain", "deletion_protection", "domain", "email_verification_message", "email_verification_subject", "endpoint", "estimated_number_of_users", "id", "last_modified_date", "mfa_configuration", "name", "region", "sms_authentication_message", "sms_verification_message", "tags", "tags_all", "user_pool_tier", "username_attributes"],
        },
      },
    }
    + block.withName(name)
  ),
  withAliasAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alias_attributes" expected to be of type "set"';
    {
      alias_attributes: converted,
    }
  ),
  withAliasAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alias_attributes" expected to be of type "set"';
    {
      alias_attributes+: converted,
    }
  ),
  withAutoVerifiedAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_verified_attributes" expected to be of type "set"';
    {
      auto_verified_attributes: converted,
    }
  ),
  withAutoVerifiedAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_verified_attributes" expected to be of type "set"';
    {
      auto_verified_attributes+: converted,
    }
  ),
  withDeletionProtection(value):: (
    local converted = value;
    assert std.isString(converted) : '"deletion_protection" expected to be of type "string"';
    {
      deletion_protection: converted,
    }
  ),
  withEmailVerificationMessage(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_verification_message" expected to be of type "string"';
    {
      email_verification_message: converted,
    }
  ),
  withEmailVerificationSubject(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_verification_subject" expected to be of type "string"';
    {
      email_verification_subject: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMfaConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"mfa_configuration" expected to be of type "string"';
    {
      mfa_configuration: converted,
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
  withSmsAuthenticationMessage(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_authentication_message" expected to be of type "string"';
    {
      sms_authentication_message: converted,
    }
  ),
  withSmsVerificationMessage(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_verification_message" expected to be of type "string"';
    {
      sms_verification_message: converted,
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
  withUserPoolTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_tier" expected to be of type "string"';
    {
      user_pool_tier: converted,
    }
  ),
  withUsernameAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"username_attributes" expected to be of type "set"';
    {
      username_attributes: converted,
    }
  ),
  withUsernameAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"username_attributes" expected to be of type "set"';
    {
      username_attributes+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  account_recovery_setting:: {
    local block = self,
    new():: (
      {}
    ),
    recovery_mechanism:: {
      local block = self,
      new(name, priority):: (
        {}
        + block.withName(name)
        + block.withPriority(priority)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withPriority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
    },
    withRecoveryMechanism(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recovery_mechanism: value,
      }
    ),
    withRecoveryMechanismMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        recovery_mechanism+: converted,
      }
    ),
  },
  admin_create_user_config:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowAdminCreateUserOnly(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_admin_create_user_only" expected to be of type "bool"';
      {
        allow_admin_create_user_only: converted,
      }
    ),
    invite_message_template:: {
      local block = self,
      new():: (
        {}
      ),
      withEmailMessage(value):: (
        local converted = value;
        assert std.isString(converted) : '"email_message" expected to be of type "string"';
        {
          email_message: converted,
        }
      ),
      withEmailSubject(value):: (
        local converted = value;
        assert std.isString(converted) : '"email_subject" expected to be of type "string"';
        {
          email_subject: converted,
        }
      ),
      withSmsMessage(value):: (
        local converted = value;
        assert std.isString(converted) : '"sms_message" expected to be of type "string"';
        {
          sms_message: converted,
        }
      ),
    },
    withInviteMessageTemplate(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invite_message_template: value,
      }
    ),
    withInviteMessageTemplateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invite_message_template+: converted,
      }
    ),
  },
  device_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withChallengeRequiredOnNewDevice(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"challenge_required_on_new_device" expected to be of type "bool"';
      {
        challenge_required_on_new_device: converted,
      }
    ),
    withDeviceOnlyRememberedOnUserPrompt(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"device_only_remembered_on_user_prompt" expected to be of type "bool"';
      {
        device_only_remembered_on_user_prompt: converted,
      }
    ),
  },
  email_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withConfigurationSet(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration_set" expected to be of type "string"';
      {
        configuration_set: converted,
      }
    ),
    withEmailSendingAccount(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_sending_account" expected to be of type "string"';
      {
        email_sending_account: converted,
      }
    ),
    withFromEmailAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"from_email_address" expected to be of type "string"';
      {
        from_email_address: converted,
      }
    ),
    withReplyToEmailAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"reply_to_email_address" expected to be of type "string"';
      {
        reply_to_email_address: converted,
      }
    ),
    withSourceArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_arn" expected to be of type "string"';
      {
        source_arn: converted,
      }
    ),
  },
  email_mfa_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withMessage(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
    withSubject(value):: (
      local converted = value;
      assert std.isString(converted) : '"subject" expected to be of type "string"';
      {
        subject: converted,
      }
    ),
  },
  lambda_config:: {
    local block = self,
    new():: (
      {}
    ),
    withCreateAuthChallenge(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_auth_challenge" expected to be of type "string"';
      {
        create_auth_challenge: converted,
      }
    ),
    withCustomMessage(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_message" expected to be of type "string"';
      {
        custom_message: converted,
      }
    ),
    withDefineAuthChallenge(value):: (
      local converted = value;
      assert std.isString(converted) : '"define_auth_challenge" expected to be of type "string"';
      {
        define_auth_challenge: converted,
      }
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withPostAuthentication(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_authentication" expected to be of type "string"';
      {
        post_authentication: converted,
      }
    ),
    withPostConfirmation(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_confirmation" expected to be of type "string"';
      {
        post_confirmation: converted,
      }
    ),
    withPreAuthentication(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_authentication" expected to be of type "string"';
      {
        pre_authentication: converted,
      }
    ),
    withPreSignUp(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_sign_up" expected to be of type "string"';
      {
        pre_sign_up: converted,
      }
    ),
    withPreTokenGeneration(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_token_generation" expected to be of type "string"';
      {
        pre_token_generation: converted,
      }
    ),
    withUserMigration(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_migration" expected to be of type "string"';
      {
        user_migration: converted,
      }
    ),
    withVerifyAuthChallengeResponse(value):: (
      local converted = value;
      assert std.isString(converted) : '"verify_auth_challenge_response" expected to be of type "string"';
      {
        verify_auth_challenge_response: converted,
      }
    ),
    custom_email_sender:: {
      local block = self,
      new(lambdaArn, lambdaVersion):: (
        {}
        + block.withLambdaArn(lambdaArn)
        + block.withLambdaVersion(lambdaVersion)
      ),
      withLambdaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      withLambdaVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_version" expected to be of type "string"';
        {
          lambda_version: converted,
        }
      ),
    },
    custom_sms_sender:: {
      local block = self,
      new(lambdaArn, lambdaVersion):: (
        {}
        + block.withLambdaArn(lambdaArn)
        + block.withLambdaVersion(lambdaVersion)
      ),
      withLambdaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      withLambdaVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_version" expected to be of type "string"';
        {
          lambda_version: converted,
        }
      ),
    },
    pre_token_generation_config:: {
      local block = self,
      new(lambdaArn, lambdaVersion):: (
        {}
        + block.withLambdaArn(lambdaArn)
        + block.withLambdaVersion(lambdaVersion)
      ),
      withLambdaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
      withLambdaVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_version" expected to be of type "string"';
        {
          lambda_version: converted,
        }
      ),
    },
    withCustomEmailSender(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_email_sender: value,
      }
    ),
    withCustomSmsSender(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sms_sender: value,
      }
    ),
    withPreTokenGenerationConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_token_generation_config: value,
      }
    ),
    withCustomEmailSenderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_email_sender+: converted,
      }
    ),
    withCustomSmsSenderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sms_sender+: converted,
      }
    ),
    withPreTokenGenerationConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pre_token_generation_config+: converted,
      }
    ),
  },
  password_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withMinimumLength(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_length" expected to be of type "number"';
      {
        minimum_length: converted,
      }
    ),
    withPasswordHistorySize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"password_history_size" expected to be of type "number"';
      {
        password_history_size: converted,
      }
    ),
    withRequireLowercase(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_lowercase" expected to be of type "bool"';
      {
        require_lowercase: converted,
      }
    ),
    withRequireNumbers(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_numbers" expected to be of type "bool"';
      {
        require_numbers: converted,
      }
    ),
    withRequireSymbols(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_symbols" expected to be of type "bool"';
      {
        require_symbols: converted,
      }
    ),
    withRequireUppercase(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_uppercase" expected to be of type "bool"';
      {
        require_uppercase: converted,
      }
    ),
    withTemporaryPasswordValidityDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"temporary_password_validity_days" expected to be of type "number"';
      {
        temporary_password_validity_days: converted,
      }
    ),
  },
  schema:: {
    local block = self,
    new(attributeDataType, name):: (
      {}
      + block.withAttributeDataType(attributeDataType)
      + block.withName(name)
    ),
    withAttributeDataType(value):: (
      local converted = value;
      assert std.isString(converted) : '"attribute_data_type" expected to be of type "string"';
      {
        attribute_data_type: converted,
      }
    ),
    withDeveloperOnlyAttribute(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"developer_only_attribute" expected to be of type "bool"';
      {
        developer_only_attribute: converted,
      }
    ),
    withMutable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"mutable" expected to be of type "bool"';
      {
        mutable: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withRequired(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
    number_attribute_constraints:: {
      local block = self,
      new():: (
        {}
      ),
      withMaxValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_value" expected to be of type "string"';
        {
          max_value: converted,
        }
      ),
      withMinValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"min_value" expected to be of type "string"';
        {
          min_value: converted,
        }
      ),
    },
    string_attribute_constraints:: {
      local block = self,
      new():: (
        {}
      ),
      withMaxLength(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_length" expected to be of type "string"';
        {
          max_length: converted,
        }
      ),
      withMinLength(value):: (
        local converted = value;
        assert std.isString(converted) : '"min_length" expected to be of type "string"';
        {
          min_length: converted,
        }
      ),
    },
    withNumberAttributeConstraints(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        number_attribute_constraints: value,
      }
    ),
    withStringAttributeConstraints(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_attribute_constraints: value,
      }
    ),
    withNumberAttributeConstraintsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        number_attribute_constraints+: converted,
      }
    ),
    withStringAttributeConstraintsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_attribute_constraints+: converted,
      }
    ),
  },
  sign_in_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowedFirstAuthFactors(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_first_auth_factors" expected to be of type "set"';
      {
        allowed_first_auth_factors: converted,
      }
    ),
    withAllowedFirstAuthFactorsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_first_auth_factors" expected to be of type "set"';
      {
        allowed_first_auth_factors+: converted,
      }
    ),
  },
  sms_configuration:: {
    local block = self,
    new(externalId, snsCallerArn):: (
      {}
      + block.withExternalId(externalId)
      + block.withSnsCallerArn(snsCallerArn)
    ),
    withExternalId(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_id" expected to be of type "string"';
      {
        external_id: converted,
      }
    ),
    withSnsCallerArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_caller_arn" expected to be of type "string"';
      {
        sns_caller_arn: converted,
      }
    ),
    withSnsRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_region" expected to be of type "string"';
      {
        sns_region: converted,
      }
    ),
  },
  software_token_mfa_configuration:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  user_attribute_update_settings:: {
    local block = self,
    new(attributesRequireVerificationBeforeUpdate):: (
      {}
      + block.withAttributesRequireVerificationBeforeUpdate(attributesRequireVerificationBeforeUpdate)
    ),
    withAttributesRequireVerificationBeforeUpdate(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"attributes_require_verification_before_update" expected to be of type "set"';
      {
        attributes_require_verification_before_update: converted,
      }
    ),
    withAttributesRequireVerificationBeforeUpdateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"attributes_require_verification_before_update" expected to be of type "set"';
      {
        attributes_require_verification_before_update+: converted,
      }
    ),
  },
  user_pool_add_ons:: {
    local block = self,
    new(advancedSecurityMode):: (
      {}
      + block.withAdvancedSecurityMode(advancedSecurityMode)
    ),
    withAdvancedSecurityMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"advanced_security_mode" expected to be of type "string"';
      {
        advanced_security_mode: converted,
      }
    ),
    advanced_security_additional_flows:: {
      local block = self,
      new():: (
        {}
      ),
      withCustomAuthMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"custom_auth_mode" expected to be of type "string"';
        {
          custom_auth_mode: converted,
        }
      ),
    },
    withAdvancedSecurityAdditionalFlows(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_security_additional_flows: value,
      }
    ),
    withAdvancedSecurityAdditionalFlowsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_security_additional_flows+: converted,
      }
    ),
  },
  username_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withCaseSensitive(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"case_sensitive" expected to be of type "bool"';
      {
        case_sensitive: converted,
      }
    ),
  },
  verification_message_template:: {
    local block = self,
    new():: (
      {}
    ),
    withDefaultEmailOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_email_option" expected to be of type "string"';
      {
        default_email_option: converted,
      }
    ),
    withEmailMessage(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_message" expected to be of type "string"';
      {
        email_message: converted,
      }
    ),
    withEmailMessageByLink(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_message_by_link" expected to be of type "string"';
      {
        email_message_by_link: converted,
      }
    ),
    withEmailSubject(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_subject" expected to be of type "string"';
      {
        email_subject: converted,
      }
    ),
    withEmailSubjectByLink(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_subject_by_link" expected to be of type "string"';
      {
        email_subject_by_link: converted,
      }
    ),
    withSmsMessage(value):: (
      local converted = value;
      assert std.isString(converted) : '"sms_message" expected to be of type "string"';
      {
        sms_message: converted,
      }
    ),
  },
  web_authn_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withRelyingPartyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"relying_party_id" expected to be of type "string"';
      {
        relying_party_id: converted,
      }
    ),
    withUserVerification(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_verification" expected to be of type "string"';
      {
        user_verification: converted,
      }
    ),
  },
  withAccountRecoverySetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_recovery_setting: value,
    }
  ),
  withAdminCreateUserConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_create_user_config: value,
    }
  ),
  withDeviceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_configuration: value,
    }
  ),
  withEmailConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_configuration: value,
    }
  ),
  withEmailMfaConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_mfa_configuration: value,
    }
  ),
  withLambdaConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config: value,
    }
  ),
  withPasswordPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_policy: value,
    }
  ),
  withSchema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema: value,
    }
  ),
  withSignInPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sign_in_policy: value,
    }
  ),
  withSmsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sms_configuration: value,
    }
  ),
  withSoftwareTokenMfaConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      software_token_mfa_configuration: value,
    }
  ),
  withUserAttributeUpdateSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_attribute_update_settings: value,
    }
  ),
  withUserPoolAddOns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_add_ons: value,
    }
  ),
  withUsernameConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      username_configuration: value,
    }
  ),
  withVerificationMessageTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      verification_message_template: value,
    }
  ),
  withWebAuthnConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      web_authn_configuration: value,
    }
  ),
  withAccountRecoverySettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      account_recovery_setting+: converted,
    }
  ),
  withAdminCreateUserConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_create_user_config+: converted,
    }
  ),
  withDeviceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_configuration+: converted,
    }
  ),
  withEmailConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_configuration+: converted,
    }
  ),
  withEmailMfaConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      email_mfa_configuration+: converted,
    }
  ),
  withLambdaConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config+: converted,
    }
  ),
  withPasswordPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_policy+: converted,
    }
  ),
  withSchemaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema+: converted,
    }
  ),
  withSignInPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sign_in_policy+: converted,
    }
  ),
  withSmsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sms_configuration+: converted,
    }
  ),
  withSoftwareTokenMfaConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      software_token_mfa_configuration+: converted,
    }
  ),
  withUserAttributeUpdateSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_attribute_update_settings+: converted,
    }
  ),
  withUserPoolAddOnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_add_ons+: converted,
    }
  ),
  withUsernameConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      username_configuration+: converted,
    }
  ),
  withVerificationMessageTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      verification_message_template+: converted,
    }
  ),
  withWebAuthnConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      web_authn_configuration+: converted,
    }
  ),
}

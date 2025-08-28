{
  local block = self,
  new(terraformName, brandId, templateName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_customization",
          type:: "resource",
          attributes:: ["body", "brand_id", "force_is_default", "id", "is_default", "language", "links", "subject", "template_name"],
        },
      },
    }
    + block.withBrandId(brandId)
    + block.withTemplateName(templateName)
  ),
  "#withBody":: "The body of the customization",
  withBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
    }
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withForceIsDefault":: "Force is_default on the create and delete by deleting all email customizations. Comma separated string with values of 'create' or 'destroy' or both `create,destroy'.",
  withForceIsDefault(value):: (
    local converted = value;
    assert std.isString(converted) : '"force_is_default" expected to be of type "string"';
    {
      force_is_default: converted,
    }
  ),
  "#withIsDefault":: "Whether the customization is the default",
  withIsDefault(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_default" expected to be of type "bool"';
    {
      is_default: converted,
    }
  ),
  "#withLanguage":: "The language supported by the customization - Example values from [supported languages](https://developer.okta.com/docs/reference/api/brands/#supported-languages)",
  withLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"language" expected to be of type "string"';
    {
      language: converted,
    }
  ),
  "#withSubject":: "The subject of the customization",
  withSubject(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject" expected to be of type "string"';
    {
      subject: converted,
    }
  ),
  "#withTemplateName":: "Template Name - Example values: `AccountLockout`,`ADForgotPassword`,`ADForgotPasswordDenied`,`ADSelfServiceUnlock`,`ADUserActivation`,`AuthenticatorEnrolled`,`AuthenticatorReset`,`ChangeEmailConfirmation`,`EmailChallenge`,`EmailChangeConfirmation`,`EmailFactorVerification`,`ForgotPassword`,`ForgotPasswordDenied`,`IGAReviewerEndNotification`,`IGAReviewerNotification`,`IGAReviewerPendingNotification`,`IGAReviewerReassigned`,`LDAPForgotPassword`,`LDAPForgotPasswordDenied`,`LDAPSelfServiceUnlock`,`LDAPUserActivation`,`MyAccountChangeConfirmation`,`NewSignOnNotification`,`OktaVerifyActivation`,`PasswordChanged`,`PasswordResetByAdmin`,`PendingEmailChange`,`RegistrationActivation`,`RegistrationEmailVerification`,`SelfServiceUnlock`,`SelfServiceUnlockOnUnlockedAccount`,`UserActivation`",
  withTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
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

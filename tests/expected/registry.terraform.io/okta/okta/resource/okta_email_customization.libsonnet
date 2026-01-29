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
    assert std.isString(value) : '"body" expected to be of type "string"';

    {
      body: value,
    }
  ),

  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  "#withForceIsDefault":: "Force is_default on the create and delete by deleting all email customizations. Comma separated string with values of 'create' or 'destroy' or both `create,destroy'.",
  withForceIsDefault(value):: (
    assert std.isString(value) : '"force_is_default" expected to be of type "string"';

    {
      force_is_default: value,
    }
  ),

  "#withIsDefault":: "Whether the customization is the default",
  withIsDefault(value):: (
    assert std.isBoolean(value) : '"is_default" expected to be of type "bool"';

    {
      is_default: value,
    }
  ),

  "#withLanguage":: "The language supported by the customization - Example values from [supported languages](https://developer.okta.com/docs/reference/api/brands/#supported-languages)",
  withLanguage(value):: (
    assert std.isString(value) : '"language" expected to be of type "string"';

    {
      language: value,
    }
  ),

  "#withSubject":: "The subject of the customization",
  withSubject(value):: (
    assert std.isString(value) : '"subject" expected to be of type "string"';

    {
      subject: value,
    }
  ),

  "#withTemplateName":: "Template Name - Example values: `AccountLockout`,`ADForgotPassword`,`ADForgotPasswordDenied`,`ADSelfServiceUnlock`,`ADUserActivation`,`AuthenticatorEnrolled`,`AuthenticatorReset`,`ChangeEmailConfirmation`,`EmailChallenge`,`EmailChangeConfirmation`,`EmailFactorVerification`,`ForgotPassword`,`ForgotPasswordDenied`,`IGAReviewerEndNotification`,`IGAReviewerNotification`,`IGAReviewerPendingNotification`,`IGAReviewerReassigned`,`LDAPForgotPassword`,`LDAPForgotPasswordDenied`,`LDAPSelfServiceUnlock`,`LDAPUserActivation`,`MyAccountChangeConfirmation`,`NewSignOnNotification`,`OktaVerifyActivation`,`PasswordChanged`,`PasswordResetByAdmin`,`PendingEmailChange`,`RegistrationActivation`,`RegistrationEmailVerification`,`SelfServiceUnlock`,`SelfServiceUnlockOnUnlockedAccount`,`UserActivation`",
  withTemplateName(value):: (
    assert std.isString(value) : '"template_name" expected to be of type "string"';

    {
      template_name: value,
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

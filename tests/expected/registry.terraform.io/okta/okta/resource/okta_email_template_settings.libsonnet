{
  local block = self,
  new(name, brand_id, recipients, template_name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_template_settings",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["brand_id", "id", "recipients", "template_name"],
      },
    }
    + block.withBrandId(brand_id)
    + block.withRecipients(recipients)
    + block.withTemplateName(template_name)
  ),
  "#withBrandId":: "The ID of the brand.",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withRecipients":: "The recipients the emails of this template will be sent to - Valid values: `ALL_USERS`, `ADMINS_ONLY`, `NO_USERS`",
  withRecipients(value):: (
    local converted = value;
    assert std.isString(converted) : '"recipients" expected to be of type "string"';
    {
      recipients: converted,
    }
  ),
  "#withTemplateName":: "Email template name - Example values: `AccountLockout`,`ADForgotPassword`,`ADForgotPasswordDenied`,`ADSelfServiceUnlock`,`ADUserActivation`,`AuthenticatorEnrolled`,`AuthenticatorReset`,`ChangeEmailConfirmation`,`EmailChallenge`,`EmailChangeConfirmation`,`EmailFactorVerification`,`ForgotPassword`,`ForgotPasswordDenied`,`IGAReviewerEndNotification`,`IGAReviewerNotification`,`IGAReviewerPendingNotification`,`IGAReviewerReassigned`,`LDAPForgotPassword`,`LDAPForgotPasswordDenied`,`LDAPSelfServiceUnlock`,`LDAPUserActivation`,`MyAccountChangeConfirmation`,`NewSignOnNotification`,`OktaVerifyActivation`,`PasswordChanged`,`PasswordResetByAdmin`,`PendingEmailChange`,`RegistrationActivation`,`RegistrationEmailVerification`,`SelfServiceUnlock`,`SelfServiceUnlockOnUnlockedAccount`,`UserActivation`",
  withTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
}

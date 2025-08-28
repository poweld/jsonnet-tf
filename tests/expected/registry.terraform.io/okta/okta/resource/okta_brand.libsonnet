{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_brand",
          type:: "resource",
          attributes:: ["agree_to_custom_privacy_policy", "brand_id", "custom_privacy_policy_url", "default_app_app_instance_id", "default_app_app_link_name", "default_app_classic_application_uri", "email_domain_id", "id", "is_default", "links", "locale", "name", "remove_powered_by_okta"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
  ),
  "#withAgreeToCustomPrivacyPolicy":: "Is a required input flag with when changing custom_privacy_url, shouldn't be considered as a readable property",
  withAgreeToCustomPrivacyPolicy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"agree_to_custom_privacy_policy" expected to be of type "bool"';
    {
      agree_to_custom_privacy_policy: converted,
    }
  ),
  "#withBrandId":: "Brand ID - Note: Okta API for brands only reads and updates therefore the okta_brand resource needs to act as a quasi data source. Do this by setting brand_id. `DEPRECATED`: Okta has fully support brand creation, this attribute is a no op and will be removed",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withCustomPrivacyPolicyUrl":: "Custom privacy policy URL",
  withCustomPrivacyPolicyUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_privacy_policy_url" expected to be of type "string"';
    {
      custom_privacy_policy_url: converted,
    }
  ),
  "#withDefaultAppAppInstanceId":: "Default app app instance id",
  withDefaultAppAppInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_app_app_instance_id" expected to be of type "string"';
    {
      default_app_app_instance_id: converted,
    }
  ),
  "#withDefaultAppAppLinkName":: "Default app app link name",
  withDefaultAppAppLinkName(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_app_app_link_name" expected to be of type "string"';
    {
      default_app_app_link_name: converted,
    }
  ),
  "#withDefaultAppClassicApplicationUri":: "Default app classic application uri",
  withDefaultAppClassicApplicationUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_app_classic_application_uri" expected to be of type "string"';
    {
      default_app_classic_application_uri: converted,
    }
  ),
  "#withLocale":: "The language specified as an IETF BCP 47 language tag",
  withLocale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  "#withName":: "Name of the brand",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withRemovePoweredByOkta":: "Removes 'Powered by Okta' from the Okta-hosted sign-in page and '© 2021 Okta, Inc.' from the Okta End-User Dashboard",
  withRemovePoweredByOkta(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"remove_powered_by_okta" expected to be of type "bool"';
    {
      remove_powered_by_okta: converted,
    }
  ),
}

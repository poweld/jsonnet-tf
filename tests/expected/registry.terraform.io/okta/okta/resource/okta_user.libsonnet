{
  local block = self,

  new(terraformName, email, firstName, lastName, login):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_user",
          type:: "resource",
          attributes:: ["city", "cost_center", "country_code", "custom_profile_attributes", "custom_profile_attributes_to_ignore", "department", "display_name", "division", "email", "employee_number", "expire_password_on_create", "first_name", "honorific_prefix", "honorific_suffix", "id", "last_name", "locale", "login", "manager", "manager_id", "middle_name", "mobile_phone", "nick_name", "old_password", "organization", "password", "password_inline_hook", "postal_address", "preferred_language", "primary_phone", "profile_url", "raw_status", "realm_id", "recovery_answer", "recovery_question", "second_email", "skip_roles", "state", "status", "street_address", "timezone", "title", "user_type", "zip_code"],
        },
      },
    }
    + block.withEmail(email)
    + block.withFirstName(firstName)
    + block.withLastName(lastName)
    + block.withLogin(login)
  ),

  "#withCity":: "User city",
  withCity(value):: (
    assert std.isString(value) : '"city" expected to be of type "string"';

    {
      city: value,
    }
  ),

  "#withCostCenter":: "User cost center",
  withCostCenter(value):: (
    assert std.isString(value) : '"cost_center" expected to be of type "string"';

    {
      cost_center: value,
    }
  ),

  "#withCountryCode":: "User country code",
  withCountryCode(value):: (
    assert std.isString(value) : '"country_code" expected to be of type "string"';

    {
      country_code: value,
    }
  ),

  "#withCustomProfileAttributes":: "JSON formatted custom attributes for a user. It must be JSON due to various types Okta allows.",
  withCustomProfileAttributes(value):: (
    assert std.isString(value) : '"custom_profile_attributes" expected to be of type "string"';

    {
      custom_profile_attributes: value,
    }
  ),

  "#withCustomProfileAttributesToIgnore":: "List of custom_profile_attribute keys that should be excluded from being managed by Terraform. This is useful in situations where specific custom fields may contain sensitive information and should be managed outside of Terraform.",
  withCustomProfileAttributesToIgnore(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"custom_profile_attributes_to_ignore" expected to be of type "set"';

    {
      custom_profile_attributes_to_ignore: converted,
    }
  ),

  "#withCustomProfileAttributesToIgnoreMixin":: "List of custom_profile_attribute keys that should be excluded from being managed by Terraform. This is useful in situations where specific custom fields may contain sensitive information and should be managed outside of Terraform.",
  withCustomProfileAttributesToIgnoreMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"custom_profile_attributes_to_ignore" expected to be of type "set"';

    {
      custom_profile_attributes_to_ignore+: converted,
    }
  ),

  "#withDepartment":: "User department",
  withDepartment(value):: (
    assert std.isString(value) : '"department" expected to be of type "string"';

    {
      department: value,
    }
  ),

  "#withDisplayName":: "User display name, suitable to show end users",
  withDisplayName(value):: (
    assert std.isString(value) : '"display_name" expected to be of type "string"';

    {
      display_name: value,
    }
  ),

  "#withDivision":: "User division",
  withDivision(value):: (
    assert std.isString(value) : '"division" expected to be of type "string"';

    {
      division: value,
    }
  ),

  "#withEmail":: "User primary email address",
  withEmail(value):: (
    assert std.isString(value) : '"email" expected to be of type "string"';

    {
      email: value,
    }
  ),

  "#withEmployeeNumber":: "User employee number",
  withEmployeeNumber(value):: (
    assert std.isString(value) : '"employee_number" expected to be of type "string"';

    {
      employee_number: value,
    }
  ),

  "#withExpirePasswordOnCreate":: "If set to `true`, the user will have to change the password at the next login. This property will be used when user is being created and works only when `password` field is set. Default: `false`",
  withExpirePasswordOnCreate(value):: (
    assert std.isBoolean(value) : '"expire_password_on_create" expected to be of type "bool"';

    {
      expire_password_on_create: value,
    }
  ),

  "#withFirstName":: "User first name",
  withFirstName(value):: (
    assert std.isString(value) : '"first_name" expected to be of type "string"';

    {
      first_name: value,
    }
  ),

  "#withHonorificPrefix":: "User honorific prefix",
  withHonorificPrefix(value):: (
    assert std.isString(value) : '"honorific_prefix" expected to be of type "string"';

    {
      honorific_prefix: value,
    }
  ),

  "#withHonorificSuffix":: "User honorific suffix",
  withHonorificSuffix(value):: (
    assert std.isString(value) : '"honorific_suffix" expected to be of type "string"';

    {
      honorific_suffix: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withLastName":: "User last name",
  withLastName(value):: (
    assert std.isString(value) : '"last_name" expected to be of type "string"';

    {
      last_name: value,
    }
  ),

  "#withLocale":: "User default location",
  withLocale(value):: (
    assert std.isString(value) : '"locale" expected to be of type "string"';

    {
      locale: value,
    }
  ),

  "#withLogin":: "User Okta login",
  withLogin(value):: (
    assert std.isString(value) : '"login" expected to be of type "string"';

    {
      login: value,
    }
  ),

  "#withManager":: "Manager of User",
  withManager(value):: (
    assert std.isString(value) : '"manager" expected to be of type "string"';

    {
      manager: value,
    }
  ),

  "#withManagerId":: "Manager ID of User",
  withManagerId(value):: (
    assert std.isString(value) : '"manager_id" expected to be of type "string"';

    {
      manager_id: value,
    }
  ),

  "#withMiddleName":: "User middle name",
  withMiddleName(value):: (
    assert std.isString(value) : '"middle_name" expected to be of type "string"';

    {
      middle_name: value,
    }
  ),

  "#withMobilePhone":: "User mobile phone number",
  withMobilePhone(value):: (
    assert std.isString(value) : '"mobile_phone" expected to be of type "string"';

    {
      mobile_phone: value,
    }
  ),

  "#withNickName":: "User nickname",
  withNickName(value):: (
    assert std.isString(value) : '"nick_name" expected to be of type "string"';

    {
      nick_name: value,
    }
  ),

  "#withOldPassword":: "Old User Password. Should be only set in case the password was not changed using the provider. fter successful password change this field should be removed and `password` field should be used for further changes.",
  withOldPassword(value):: (
    assert std.isString(value) : '"old_password" expected to be of type "string"';

    {
      old_password: value,
    }
  ),

  "#withOrganization":: "User organization",
  withOrganization(value):: (
    assert std.isString(value) : '"organization" expected to be of type "string"';

    {
      organization: value,
    }
  ),

  "#withPassword":: "User Password",
  withPassword(value):: (
    assert std.isString(value) : '"password" expected to be of type "string"';

    {
      password: value,
    }
  ),

  "#withPasswordInlineHook":: "Specifies that a Password Import Inline Hook should be triggered to handle verification of the user's password the first time the user logs in. This allows an existing password to be imported into Okta directly from some other store. When updating a user with a password hook the user must be in the `STAGED` status. The `password` field should not be specified when using Password Import Inline Hook.",
  withPasswordInlineHook(value):: (
    assert std.isString(value) : '"password_inline_hook" expected to be of type "string"';

    {
      password_inline_hook: value,
    }
  ),

  "#withPostalAddress":: "User mailing address",
  withPostalAddress(value):: (
    assert std.isString(value) : '"postal_address" expected to be of type "string"';

    {
      postal_address: value,
    }
  ),

  "#withPreferredLanguage":: "User preferred language",
  withPreferredLanguage(value):: (
    assert std.isString(value) : '"preferred_language" expected to be of type "string"';

    {
      preferred_language: value,
    }
  ),

  "#withPrimaryPhone":: "User primary phone number",
  withPrimaryPhone(value):: (
    assert std.isString(value) : '"primary_phone" expected to be of type "string"';

    {
      primary_phone: value,
    }
  ),

  "#withProfileUrl":: "User online profile (web page)",
  withProfileUrl(value):: (
    assert std.isString(value) : '"profile_url" expected to be of type "string"';

    {
      profile_url: value,
    }
  ),

  "#withRealmId":: "The Realm ID to associate the user with",
  withRealmId(value):: (
    assert std.isString(value) : '"realm_id" expected to be of type "string"';

    {
      realm_id: value,
    }
  ),

  "#withRecoveryAnswer":: "User Password Recovery Answer",
  withRecoveryAnswer(value):: (
    assert std.isString(value) : '"recovery_answer" expected to be of type "string"';

    {
      recovery_answer: value,
    }
  ),

  "#withRecoveryQuestion":: "User Password Recovery Question",
  withRecoveryQuestion(value):: (
    assert std.isString(value) : '"recovery_question" expected to be of type "string"';

    {
      recovery_question: value,
    }
  ),

  "#withSecondEmail":: "User secondary email address, used for account recovery",
  withSecondEmail(value):: (
    assert std.isString(value) : '"second_email" expected to be of type "string"';

    {
      second_email: value,
    }
  ),

  "#withSkipRoles":: "Do not populate user roles information (prevents additional API call)",
  withSkipRoles(value):: (
    assert std.isBoolean(value) : '"skip_roles" expected to be of type "bool"';

    {
      skip_roles: value,
    }
  ),

  "#withState":: "User state or region",
  withState(value):: (
    assert std.isString(value) : '"state" expected to be of type "string"';

    {
      state: value,
    }
  ),

  "#withStatus":: "User profile property. Valid values are `ACTIVE`, `DEPROVISIONED`, `STAGED`, `SUSPENDED`. Default: `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withStreetAddress":: "User street address",
  withStreetAddress(value):: (
    assert std.isString(value) : '"street_address" expected to be of type "string"';

    {
      street_address: value,
    }
  ),

  "#withTimezone":: "User default timezone",
  withTimezone(value):: (
    assert std.isString(value) : '"timezone" expected to be of type "string"';

    {
      timezone: value,
    }
  ),

  "#withTitle":: "User title",
  withTitle(value):: (
    assert std.isString(value) : '"title" expected to be of type "string"';

    {
      title: value,
    }
  ),

  "#withUserType":: "User employee type",
  withUserType(value):: (
    assert std.isString(value) : '"user_type" expected to be of type "string"';

    {
      user_type: value,
    }
  ),

  "#withZipCode":: "User zipcode or postal code",
  withZipCode(value):: (
    assert std.isString(value) : '"zip_code" expected to be of type "string"';

    {
      zip_code: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  passwordHash:: {
    local block = self,

    new(algorithm, value):: (
      {}
      + block.withAlgorithm(algorithm)
      + block.withValue(value)
    ),

    "#withAlgorithm":: "The algorithm used to generate the hash using the password",
    withAlgorithm(value):: (
      assert std.isString(value) : '"algorithm" expected to be of type "string"';

      {
        algorithm: value,
      }
    ),

    "#withSalt":: "Only required for salted hashes",
    withSalt(value):: (
      assert std.isString(value) : '"salt" expected to be of type "string"';

      {
        salt: value,
      }
    ),

    "#withSaltOrder":: "Specifies whether salt was pre- or postfixed to the password before hashing",
    withSaltOrder(value):: (
      assert std.isString(value) : '"salt_order" expected to be of type "string"';

      {
        salt_order: value,
      }
    ),

    "#withValue":: "For SHA-512, SHA-256, SHA-1, MD5, This is the actual base64-encoded hash of the password (and salt, if used). This is the Base64 encoded value of the SHA-512/SHA-256/SHA-1/MD5 digest that was computed by either pre-fixing or post-fixing the salt to the password, depending on the saltOrder. If a salt was not used in the source system, then this should just be the the Base64 encoded value of the password's SHA-512/SHA-256/SHA-1/MD5 digest. For BCRYPT, This is the actual radix64-encoded hashed password.",
    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
      }
    ),

    "#withWorkFactor":: "Governs the strength of the hash and the time required to compute it. Only required for BCRYPT algorithm",
    withWorkFactor(value):: (
      assert std.isNumber(value) : '"work_factor" expected to be of type "number"';

      {
        work_factor: value,
      }
    ),
  },
  withPasswordHash(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_hash: converted,
    }
  ),
  withPasswordHashMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_hash+: converted,
    }
  ),
}

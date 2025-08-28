{
  local block = self,
  new(terraformName, email, firstName, lastName, login):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_user",
          type:: "resource",
          attributes:: ["city", "cost_center", "country_code", "custom_profile_attributes", "custom_profile_attributes_to_ignore", "department", "display_name", "division", "email", "employee_number", "expire_password_on_create", "first_name", "honorific_prefix", "honorific_suffix", "id", "last_name", "locale", "login", "manager", "manager_id", "middle_name", "mobile_phone", "nick_name", "old_password", "organization", "password", "password_inline_hook", "postal_address", "preferred_language", "primary_phone", "profile_url", "raw_status", "recovery_answer", "recovery_question", "second_email", "skip_roles", "state", "status", "street_address", "timezone", "title", "user_type", "zip_code"],
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
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  "#withCostCenter":: "User cost center",
  withCostCenter(value):: (
    local converted = value;
    assert std.isString(converted) : '"cost_center" expected to be of type "string"';
    {
      cost_center: converted,
    }
  ),
  "#withCountryCode":: "User country code",
  withCountryCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"country_code" expected to be of type "string"';
    {
      country_code: converted,
    }
  ),
  "#withCustomProfileAttributes":: "JSON formatted custom attributes for a user. It must be JSON due to various types Okta allows.",
  withCustomProfileAttributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_profile_attributes" expected to be of type "string"';
    {
      custom_profile_attributes: converted,
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
    local converted = value;
    assert std.isString(converted) : '"department" expected to be of type "string"';
    {
      department: converted,
    }
  ),
  "#withDisplayName":: "User display name, suitable to show end users",
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  "#withDivision":: "User division",
  withDivision(value):: (
    local converted = value;
    assert std.isString(converted) : '"division" expected to be of type "string"';
    {
      division: converted,
    }
  ),
  "#withEmail":: "User primary email address",
  withEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  "#withEmployeeNumber":: "User employee number",
  withEmployeeNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"employee_number" expected to be of type "string"';
    {
      employee_number: converted,
    }
  ),
  "#withExpirePasswordOnCreate":: "If set to `true`, the user will have to change the password at the next login. This property will be used when user is being created and works only when `password` field is set. Default: `false`",
  withExpirePasswordOnCreate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"expire_password_on_create" expected to be of type "bool"';
    {
      expire_password_on_create: converted,
    }
  ),
  "#withFirstName":: "User first name",
  withFirstName(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  "#withHonorificPrefix":: "User honorific prefix",
  withHonorificPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_prefix" expected to be of type "string"';
    {
      honorific_prefix: converted,
    }
  ),
  "#withHonorificSuffix":: "User honorific suffix",
  withHonorificSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"honorific_suffix" expected to be of type "string"';
    {
      honorific_suffix: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLastName":: "User last name",
  withLastName(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  "#withLocale":: "User default location",
  withLocale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  "#withLogin":: "User Okta login",
  withLogin(value):: (
    local converted = value;
    assert std.isString(converted) : '"login" expected to be of type "string"';
    {
      login: converted,
    }
  ),
  "#withManager":: "Manager of User",
  withManager(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager" expected to be of type "string"';
    {
      manager: converted,
    }
  ),
  "#withManagerId":: "Manager ID of User",
  withManagerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager_id" expected to be of type "string"';
    {
      manager_id: converted,
    }
  ),
  "#withMiddleName":: "User middle name",
  withMiddleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"middle_name" expected to be of type "string"';
    {
      middle_name: converted,
    }
  ),
  "#withMobilePhone":: "User mobile phone number",
  withMobilePhone(value):: (
    local converted = value;
    assert std.isString(converted) : '"mobile_phone" expected to be of type "string"';
    {
      mobile_phone: converted,
    }
  ),
  "#withNickName":: "User nickname",
  withNickName(value):: (
    local converted = value;
    assert std.isString(converted) : '"nick_name" expected to be of type "string"';
    {
      nick_name: converted,
    }
  ),
  "#withOldPassword":: "Old User Password. Should be only set in case the password was not changed using the provider. fter successful password change this field should be removed and `password` field should be used for further changes.",
  withOldPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"old_password" expected to be of type "string"';
    {
      old_password: converted,
    }
  ),
  "#withOrganization":: "User organization",
  withOrganization(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization" expected to be of type "string"';
    {
      organization: converted,
    }
  ),
  "#withPassword":: "User Password",
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  "#withPasswordInlineHook":: "Specifies that a Password Import Inline Hook should be triggered to handle verification of the user's password the first time the user logs in. This allows an existing password to be imported into Okta directly from some other store. When updating a user with a password hook the user must be in the `STAGED` status. The `password` field should not be specified when using Password Import Inline Hook.",
  withPasswordInlineHook(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_inline_hook" expected to be of type "string"';
    {
      password_inline_hook: converted,
    }
  ),
  "#withPostalAddress":: "User mailing address",
  withPostalAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_address" expected to be of type "string"';
    {
      postal_address: converted,
    }
  ),
  "#withPreferredLanguage":: "User preferred language",
  withPreferredLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_language" expected to be of type "string"';
    {
      preferred_language: converted,
    }
  ),
  "#withPrimaryPhone":: "User primary phone number",
  withPrimaryPhone(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_phone" expected to be of type "string"';
    {
      primary_phone: converted,
    }
  ),
  "#withProfileUrl":: "User online profile (web page)",
  withProfileUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_url" expected to be of type "string"';
    {
      profile_url: converted,
    }
  ),
  "#withRecoveryAnswer":: "User Password Recovery Answer",
  withRecoveryAnswer(value):: (
    local converted = value;
    assert std.isString(converted) : '"recovery_answer" expected to be of type "string"';
    {
      recovery_answer: converted,
    }
  ),
  "#withRecoveryQuestion":: "User Password Recovery Question",
  withRecoveryQuestion(value):: (
    local converted = value;
    assert std.isString(converted) : '"recovery_question" expected to be of type "string"';
    {
      recovery_question: converted,
    }
  ),
  "#withSecondEmail":: "User secondary email address, used for account recovery",
  withSecondEmail(value):: (
    local converted = value;
    assert std.isString(converted) : '"second_email" expected to be of type "string"';
    {
      second_email: converted,
    }
  ),
  "#withSkipRoles":: "Do not populate user roles information (prevents additional API call)",
  withSkipRoles(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_roles" expected to be of type "bool"';
    {
      skip_roles: converted,
    }
  ),
  "#withState":: "User state or region",
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  "#withStatus":: "User profile property. Valid values are `ACTIVE`, `DEPROVISIONED`, `STAGED`, `SUSPENDED`. Default: `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withStreetAddress":: "User street address",
  withStreetAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"street_address" expected to be of type "string"';
    {
      street_address: converted,
    }
  ),
  "#withTimezone":: "User default timezone",
  withTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  "#withTitle":: "User title",
  withTitle(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  "#withUserType":: "User employee type",
  withUserType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  "#withZipCode":: "User zipcode or postal code",
  withZipCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_code" expected to be of type "string"';
    {
      zip_code: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
  password_hash:: {
    local block = self,
    new(algorithm, value):: (
      {}
      + block.withAlgorithm(algorithm)
      + block.withValue(value)
    ),
    "#withAlgorithm":: "The algorithm used to generate the hash using the password",
    withAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"algorithm" expected to be of type "string"';
      {
        algorithm: converted,
      }
    ),
    "#withSalt":: "Only required for salted hashes",
    withSalt(value):: (
      local converted = value;
      assert std.isString(converted) : '"salt" expected to be of type "string"';
      {
        salt: converted,
      }
    ),
    "#withSaltOrder":: "Specifies whether salt was pre- or postfixed to the password before hashing",
    withSaltOrder(value):: (
      local converted = value;
      assert std.isString(converted) : '"salt_order" expected to be of type "string"';
      {
        salt_order: converted,
      }
    ),
    "#withValue":: "For SHA-512, SHA-256, SHA-1, MD5, This is the actual base64-encoded hash of the password (and salt, if used). This is the Base64 encoded value of the SHA-512/SHA-256/SHA-1/MD5 digest that was computed by either pre-fixing or post-fixing the salt to the password, depending on the saltOrder. If a salt was not used in the source system, then this should just be the the Base64 encoded value of the password's SHA-512/SHA-256/SHA-1/MD5 digest. For BCRYPT, This is the actual radix64-encoded hashed password.",
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
    "#withWorkFactor":: "Governs the strength of the hash and the time required to compute it. Only required for BCRYPT algorithm",
    withWorkFactor(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"work_factor" expected to be of type "number"';
      {
        work_factor: converted,
      }
    ),
  },
  withPasswordHash(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_hash: value,
    }
  ),
  withPasswordHashMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      password_hash+: converted,
    }
  ),
}

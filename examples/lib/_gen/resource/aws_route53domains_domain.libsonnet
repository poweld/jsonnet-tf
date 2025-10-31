{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53domains_domain",
          type:: "resource",
          attributes:: ["abuse_contact_email", "abuse_contact_phone", "admin_privacy", "auto_renew", "billing_contact", "billing_privacy", "creation_date", "domain_name", "duration_in_years", "expiration_date", "hosted_zone_id", "name_server", "registrant_privacy", "registrar_name", "registrar_url", "status_list", "tags", "tags_all", "tech_privacy", "transfer_lock", "updated_date", "whois_server"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withAdminPrivacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"admin_privacy" expected to be of type "bool"';
    {
      admin_privacy: converted,
    }
  ),
  withAutoRenew(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_renew" expected to be of type "bool"';
    {
      auto_renew: converted,
    }
  ),
  withBillingContact(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"billing_contact" expected to be of type "list"';
    {
      billing_contact: converted,
    }
  ),
  withBillingContactMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"billing_contact" expected to be of type "list"';
    {
      billing_contact+: converted,
    }
  ),
  withBillingPrivacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"billing_privacy" expected to be of type "bool"';
    {
      billing_privacy: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withDurationInYears(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration_in_years" expected to be of type "number"';
    {
      duration_in_years: converted,
    }
  ),
  withNameServer(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name_server" expected to be of type "list"';
    {
      name_server: converted,
    }
  ),
  withNameServerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name_server" expected to be of type "list"';
    {
      name_server+: converted,
    }
  ),
  withRegistrantPrivacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"registrant_privacy" expected to be of type "bool"';
    {
      registrant_privacy: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTechPrivacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tech_privacy" expected to be of type "bool"';
    {
      tech_privacy: converted,
    }
  ),
  withTransferLock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transfer_lock" expected to be of type "bool"';
    {
      transfer_lock: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  admin_contact:: {
    local block = self,
    new():: (
      {}
    ),
    withAddressLine_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_line_1" expected to be of type "string"';
      {
        address_line_1: converted,
      }
    ),
    withAddressLine_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_line_2" expected to be of type "string"';
      {
        address_line_2: converted,
      }
    ),
    withCity(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    withContactType(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_type" expected to be of type "string"';
      {
        contact_type: converted,
      }
    ),
    withCountryCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"country_code" expected to be of type "string"';
      {
        country_code: converted,
      }
    ),
    withEmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    withFax(value):: (
      local converted = value;
      assert std.isString(converted) : '"fax" expected to be of type "string"';
      {
        fax: converted,
      }
    ),
    withFirstName(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    withLastName(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    withOrganizationName(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_name" expected to be of type "string"';
      {
        organization_name: converted,
      }
    ),
    withPhoneNumber(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
    withZipCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"zip_code" expected to be of type "string"';
      {
        zip_code: converted,
      }
    ),
    extra_param:: {
      local block = self,
      new(name, value):: (
        {}
        + block.withName(name)
        + block.withValue(value)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withExtraParam(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        extra_param: value,
      }
    ),
    withExtraParamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        extra_param+: converted,
      }
    ),
  },
  registrant_contact:: {
    local block = self,
    new():: (
      {}
    ),
    withAddressLine_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_line_1" expected to be of type "string"';
      {
        address_line_1: converted,
      }
    ),
    withAddressLine_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_line_2" expected to be of type "string"';
      {
        address_line_2: converted,
      }
    ),
    withCity(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    withContactType(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_type" expected to be of type "string"';
      {
        contact_type: converted,
      }
    ),
    withCountryCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"country_code" expected to be of type "string"';
      {
        country_code: converted,
      }
    ),
    withEmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    withFax(value):: (
      local converted = value;
      assert std.isString(converted) : '"fax" expected to be of type "string"';
      {
        fax: converted,
      }
    ),
    withFirstName(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    withLastName(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    withOrganizationName(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_name" expected to be of type "string"';
      {
        organization_name: converted,
      }
    ),
    withPhoneNumber(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
    withZipCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"zip_code" expected to be of type "string"';
      {
        zip_code: converted,
      }
    ),
    extra_param:: {
      local block = self,
      new(name, value):: (
        {}
        + block.withName(name)
        + block.withValue(value)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withExtraParam(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        extra_param: value,
      }
    ),
    withExtraParamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        extra_param+: converted,
      }
    ),
  },
  tech_contact:: {
    local block = self,
    new():: (
      {}
    ),
    withAddressLine_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_line_1" expected to be of type "string"';
      {
        address_line_1: converted,
      }
    ),
    withAddressLine_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_line_2" expected to be of type "string"';
      {
        address_line_2: converted,
      }
    ),
    withCity(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    withContactType(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_type" expected to be of type "string"';
      {
        contact_type: converted,
      }
    ),
    withCountryCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"country_code" expected to be of type "string"';
      {
        country_code: converted,
      }
    ),
    withEmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    withFax(value):: (
      local converted = value;
      assert std.isString(converted) : '"fax" expected to be of type "string"';
      {
        fax: converted,
      }
    ),
    withFirstName(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    withLastName(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    withOrganizationName(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_name" expected to be of type "string"';
      {
        organization_name: converted,
      }
    ),
    withPhoneNumber(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
    withZipCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"zip_code" expected to be of type "string"';
      {
        zip_code: converted,
      }
    ),
    extra_param:: {
      local block = self,
      new(name, value):: (
        {}
        + block.withName(name)
        + block.withValue(value)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    withExtraParam(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        extra_param: value,
      }
    ),
    withExtraParamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        extra_param+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAdminContact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_contact: value,
    }
  ),
  withRegistrantContact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registrant_contact: value,
    }
  ),
  withTechContact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tech_contact: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAdminContactMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_contact+: converted,
    }
  ),
  withRegistrantContactMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registrant_contact+: converted,
    }
  ),
  withTechContactMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tech_contact+: converted,
    }
  ),
}

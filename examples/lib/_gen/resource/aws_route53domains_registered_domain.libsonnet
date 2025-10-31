{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53domains_registered_domain",
          type:: "resource",
          attributes:: ["abuse_contact_email", "abuse_contact_phone", "admin_privacy", "auto_renew", "billing_privacy", "creation_date", "domain_name", "expiration_date", "id", "registrant_privacy", "registrar_name", "registrar_url", "reseller", "status_list", "tags", "tags_all", "tech_privacy", "transfer_lock", "updated_date", "whois_server"],
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
    withExtraParams(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
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
  },
  billing_contact:: {
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
    withExtraParams(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
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
  },
  name_server:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withGlueIps(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"glue_ips" expected to be of type "set"';
      {
        glue_ips: converted,
      }
    ),
    withGlueIpsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"glue_ips" expected to be of type "set"';
      {
        glue_ips+: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
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
    withExtraParams(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
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
    withExtraParams(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
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
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
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
  withBillingContact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_contact: value,
    }
  ),
  withNameServer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_server: value,
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
  withBillingContactMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_contact+: converted,
    }
  ),
  withNameServerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_server+: converted,
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

{
  local block = self,
  new(terraformName, name, power, scale):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_container_service",
          type:: "resource",
          attributes:: ["arn", "availability_zone", "created_at", "id", "is_disabled", "name", "power", "power_id", "principal_arn", "private_domain_name", "region", "resource_type", "scale", "state", "tags", "tags_all", "url"],
        },
      },
    }
    + block.withName(name)
    + block.withPower(power)
    + block.withScale(scale)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIsDisabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_disabled" expected to be of type "bool"';
    {
      is_disabled: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPower(value):: (
    local converted = value;
    assert std.isString(converted) : '"power" expected to be of type "string"';
    {
      power: converted,
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
  withScale(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scale" expected to be of type "number"';
    {
      scale: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  private_registry_access:: {
    local block = self,
    new():: (
      {}
    ),
    ecr_image_puller_role:: {
      local block = self,
      new():: (
        {}
      ),
      withIsActive(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_active" expected to be of type "bool"';
        {
          is_active: converted,
        }
      ),
    },
    withEcrImagePullerRole(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_puller_role: value,
      }
    ),
    withEcrImagePullerRoleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_puller_role+: converted,
      }
    ),
  },
  public_domain_names:: {
    local block = self,
    new():: (
      {}
    ),
    certificate:: {
      local block = self,
      new(certificateName, domainNames):: (
        {}
        + block.withCertificateName(certificateName)
        + block.withDomainNames(domainNames)
      ),
      withCertificateName(value):: (
        local converted = value;
        assert std.isString(converted) : '"certificate_name" expected to be of type "string"';
        {
          certificate_name: converted,
        }
      ),
      withDomainNames(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"domain_names" expected to be of type "list"';
        {
          domain_names: converted,
        }
      ),
      withDomainNamesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"domain_names" expected to be of type "list"';
        {
          domain_names+: converted,
        }
      ),
    },
    withCertificate(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        certificate: value,
      }
    ),
    withCertificateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        certificate+: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  withPrivateRegistryAccess(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_registry_access: value,
    }
  ),
  withPublicDomainNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_domain_names: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withPrivateRegistryAccessMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_registry_access+: converted,
    }
  ),
  withPublicDomainNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_domain_names+: converted,
    }
  ),
}

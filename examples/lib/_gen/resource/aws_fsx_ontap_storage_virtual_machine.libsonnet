{
  local block = self,
  new(terraformName, fileSystemId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_ontap_storage_virtual_machine",
          type:: "resource",
          attributes:: ["arn", "endpoints", "file_system_id", "id", "name", "region", "root_volume_security_style", "subtype", "svm_admin_password", "tags", "tags_all", "uuid"],
        },
      },
    }
    + block.withFileSystemId(fileSystemId)
    + block.withName(name)
  ),
  withFileSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withRootVolumeSecurityStyle(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_volume_security_style" expected to be of type "string"';
    {
      root_volume_security_style: converted,
    }
  ),
  withSvmAdminPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"svm_admin_password" expected to be of type "string"';
    {
      svm_admin_password: converted,
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
  active_directory_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withNetbiosName(value):: (
      local converted = value;
      assert std.isString(converted) : '"netbios_name" expected to be of type "string"';
      {
        netbios_name: converted,
      }
    ),
    self_managed_active_directory_configuration:: {
      local block = self,
      new(dnsIps, domainName, password, username):: (
        {}
        + block.withDnsIps(dnsIps)
        + block.withDomainName(domainName)
        + block.withPassword(password)
        + block.withUsername(username)
      ),
      withDnsIps(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
        {
          dns_ips: converted,
        }
      ),
      withDnsIpsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
        {
          dns_ips+: converted,
        }
      ),
      withDomainName(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_name" expected to be of type "string"';
        {
          domain_name: converted,
        }
      ),
      withFileSystemAdministratorsGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_administrators_group" expected to be of type "string"';
        {
          file_system_administrators_group: converted,
        }
      ),
      withOrganizationalUnitDistinguishedName(value):: (
        local converted = value;
        assert std.isString(converted) : '"organizational_unit_distinguished_name" expected to be of type "string"';
        {
          organizational_unit_distinguished_name: converted,
        }
      ),
      withPassword(value):: (
        local converted = value;
        assert std.isString(converted) : '"password" expected to be of type "string"';
        {
          password: converted,
        }
      ),
      withUsername(value):: (
        local converted = value;
        assert std.isString(converted) : '"username" expected to be of type "string"';
        {
          username: converted,
        }
      ),
    },
    withSelfManagedActiveDirectoryConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_active_directory_configuration: value,
      }
    ),
    withSelfManagedActiveDirectoryConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_active_directory_configuration+: converted,
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
  withActiveDirectoryConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withActiveDirectoryConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      active_directory_configuration+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName, directoryName, organizationalUnitDistinguishedNames):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appstream_directory_config",
          type:: "resource",
          attributes:: ["created_time", "directory_name", "id", "organizational_unit_distinguished_names", "region"],
        },
      },
    }
    + block.withDirectoryName(directoryName)
    + block.withOrganizationalUnitDistinguishedNames(organizationalUnitDistinguishedNames)
  ),
  withDirectoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_name" expected to be of type "string"';
    {
      directory_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOrganizationalUnitDistinguishedNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_distinguished_names" expected to be of type "set"';
    {
      organizational_unit_distinguished_names: converted,
    }
  ),
  withOrganizationalUnitDistinguishedNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_distinguished_names" expected to be of type "set"';
    {
      organizational_unit_distinguished_names+: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  service_account_credentials:: {
    local block = self,
    new(accountName, accountPassword):: (
      {}
      + block.withAccountName(accountName)
      + block.withAccountPassword(accountPassword)
    ),
    withAccountName(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_name" expected to be of type "string"';
      {
        account_name: converted,
      }
    ),
    withAccountPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_password" expected to be of type "string"';
      {
        account_password: converted,
      }
    ),
  },
  withServiceAccountCredentials(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_account_credentials: value,
    }
  ),
  withServiceAccountCredentialsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_account_credentials+: converted,
    }
  ),
}

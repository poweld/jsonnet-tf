{
  local block = self,
  new(terraformName, name, password):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_directory_service_directory",
          type:: "resource",
          attributes:: ["access_url", "alias", "description", "desired_number_of_domain_controllers", "dns_ip_addresses", "edition", "enable_sso", "id", "name", "password", "region", "security_group_id", "short_name", "size", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withPassword(password)
  ),
  withAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDesiredNumberOfDomainControllers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_number_of_domain_controllers" expected to be of type "number"';
    {
      desired_number_of_domain_controllers: converted,
    }
  ),
  withEdition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
    }
  ),
  withEnableSso(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_sso" expected to be of type "bool"';
    {
      enable_sso: converted,
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
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
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
  withShortName(value):: (
    local converted = value;
    assert std.isString(converted) : '"short_name" expected to be of type "string"';
    {
      short_name: converted,
    }
  ),
  withSize(value):: (
    local converted = value;
    assert std.isString(converted) : '"size" expected to be of type "string"';
    {
      size: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  connect_settings:: {
    local block = self,
    new(customerDnsIps, customerUsername, subnetIds, vpcId):: (
      {}
      + block.withCustomerDnsIps(customerDnsIps)
      + block.withCustomerUsername(customerUsername)
      + block.withSubnetIds(subnetIds)
      + block.withVpcId(vpcId)
    ),
    withCustomerDnsIps(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"customer_dns_ips" expected to be of type "set"';
      {
        customer_dns_ips: converted,
      }
    ),
    withCustomerDnsIpsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"customer_dns_ips" expected to be of type "set"';
      {
        customer_dns_ips+: converted,
      }
    ),
    withCustomerUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"customer_username" expected to be of type "string"';
      {
        customer_username: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
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
  vpc_settings:: {
    local block = self,
    new(subnetIds, vpcId):: (
      {}
      + block.withSubnetIds(subnetIds)
      + block.withVpcId(vpcId)
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  withConnectSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connect_settings: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_settings: value,
    }
  ),
  withConnectSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connect_settings+: converted,
    }
  ),
  withVpcSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_settings+: converted,
    }
  ),
}

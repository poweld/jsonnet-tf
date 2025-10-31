{
  local block = self,
  new(terraformName, dbProxyEndpointName, dbProxyName, vpcSubnetIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_proxy_endpoint",
          type:: "resource",
          attributes:: ["arn", "db_proxy_endpoint_name", "db_proxy_name", "endpoint", "id", "is_default", "region", "tags", "tags_all", "target_role", "vpc_id", "vpc_security_group_ids", "vpc_subnet_ids"],
        },
      },
    }
    + block.withDbProxyEndpointName(dbProxyEndpointName)
    + block.withDbProxyName(dbProxyName)
    + block.withVpcSubnetIds(vpcSubnetIds)
  ),
  withDbProxyEndpointName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_proxy_endpoint_name" expected to be of type "string"';
    {
      db_proxy_endpoint_name: converted,
    }
  ),
  withDbProxyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_proxy_name" expected to be of type "string"';
    {
      db_proxy_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTargetRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_role" expected to be of type "string"';
    {
      target_role: converted,
    }
  ),
  withVpcSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  withVpcSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
  withVpcSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids: converted,
    }
  ),
  withVpcSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

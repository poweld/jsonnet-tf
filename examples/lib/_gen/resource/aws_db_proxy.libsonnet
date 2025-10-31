{
  local block = self,
  new(terraformName, engineFamily, name, roleArn, vpcSubnetIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_proxy",
          type:: "resource",
          attributes:: ["arn", "debug_logging", "endpoint", "engine_family", "id", "idle_client_timeout", "name", "region", "require_tls", "role_arn", "tags", "tags_all", "vpc_security_group_ids", "vpc_subnet_ids"],
        },
      },
    }
    + block.withEngineFamily(engineFamily)
    + block.withName(name)
    + block.withRoleArn(roleArn)
    + block.withVpcSubnetIds(vpcSubnetIds)
  ),
  withDebugLogging(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"debug_logging" expected to be of type "bool"';
    {
      debug_logging: converted,
    }
  ),
  withEngineFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_family" expected to be of type "string"';
    {
      engine_family: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdleClientTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_client_timeout" expected to be of type "number"';
    {
      idle_client_timeout: converted,
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
  withRequireTls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_tls" expected to be of type "bool"';
    {
      require_tls: converted,
    }
  ),
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  auth:: {
    local block = self,
    new():: (
      {}
    ),
    withAuthScheme(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_scheme" expected to be of type "string"';
      {
        auth_scheme: converted,
      }
    ),
    withClientPasswordAuthType(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_password_auth_type" expected to be of type "string"';
      {
        client_password_auth_type: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withIamAuth(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_auth" expected to be of type "string"';
      {
        iam_auth: converted,
      }
    ),
    withSecretArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
      {
        secret_arn: converted,
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
  withAuth(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAuthMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth+: converted,
    }
  ),
}

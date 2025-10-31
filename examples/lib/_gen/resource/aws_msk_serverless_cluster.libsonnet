{
  local block = self,
  new(terraformName, clusterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_msk_serverless_cluster",
          type:: "resource",
          attributes:: ["arn", "bootstrap_brokers_sasl_iam", "cluster_name", "cluster_uuid", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withClusterName(clusterName)
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  client_authentication:: {
    local block = self,
    new():: (
      {}
    ),
    sasl:: {
      local block = self,
      new():: (
        {}
      ),
      iam:: {
        local block = self,
        new(enabled):: (
          {}
          + block.withEnabled(enabled)
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      withIam(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam: value,
        }
      ),
      withIamMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam+: converted,
        }
      ),
    },
    withSasl(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl: value,
      }
    ),
    withSaslMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sasl+: converted,
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
  },
  vpc_config:: {
    local block = self,
    new(subnetIds):: (
      {}
      + block.withSubnetIds(subnetIds)
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
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
  },
  withClientAuthentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withClientAuthenticationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_authentication+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}

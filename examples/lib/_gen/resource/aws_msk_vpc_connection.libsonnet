{
  local block = self,
  new(terraformName, authentication, clientSubnets, securityGroups, targetClusterArn, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_msk_vpc_connection",
          type:: "resource",
          attributes:: ["arn", "authentication", "client_subnets", "id", "region", "security_groups", "tags", "tags_all", "target_cluster_arn", "vpc_id"],
        },
      },
    }
    + block.withAuthentication(authentication)
    + block.withClientSubnets(clientSubnets)
    + block.withSecurityGroups(securityGroups)
    + block.withTargetClusterArn(targetClusterArn)
    + block.withVpcId(vpcId)
  ),
  withAuthentication(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication" expected to be of type "string"';
    {
      authentication: converted,
    }
  ),
  withClientSubnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_subnets" expected to be of type "set"';
    {
      client_subnets: converted,
    }
  ),
  withClientSubnetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_subnets" expected to be of type "set"';
    {
      client_subnets+: converted,
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
  withSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  withSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
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
  withTargetClusterArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_cluster_arn" expected to be of type "string"';
    {
      target_cluster_arn: converted,
    }
  ),
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

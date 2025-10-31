{
  local block = self,
  new(terraformName, account, clusterIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_endpoint_authorization",
          type:: "resource",
          attributes:: ["account", "allowed_all_vpcs", "cluster_identifier", "endpoint_count", "force_delete", "grantee", "grantor", "id", "region", "vpc_ids"],
        },
      },
    }
    + block.withAccount(account)
    + block.withClusterIdentifier(clusterIdentifier)
  ),
  withAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"account" expected to be of type "string"';
    {
      account: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withForceDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
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
  withVpcIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_ids" expected to be of type "set"';
    {
      vpc_ids: converted,
    }
  ),
  withVpcIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_ids" expected to be of type "set"';
    {
      vpc_ids+: converted,
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

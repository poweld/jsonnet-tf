{
  local block = self,
  new(terraformName, clusterIdentifier, dbUser):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_cluster_credentials",
          type:: "data",
          attributes:: ["auto_create", "cluster_identifier", "db_groups", "db_name", "db_password", "db_user", "duration_seconds", "expiration", "id", "region"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withDbUser(dbUser)
  ),
  withAutoCreate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_create" expected to be of type "bool"';
    {
      auto_create: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withDbGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_groups" expected to be of type "set"';
    {
      db_groups: converted,
    }
  ),
  withDbGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_groups" expected to be of type "set"';
    {
      db_groups+: converted,
    }
  ),
  withDbName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_name" expected to be of type "string"';
    {
      db_name: converted,
    }
  ),
  withDbUser(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_user" expected to be of type "string"';
    {
      db_user: converted,
    }
  ),
  withDurationSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration_seconds" expected to be of type "number"';
    {
      duration_seconds: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}

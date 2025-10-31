{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dsql_cluster",
          type:: "resource",
          attributes:: ["arn", "deletion_protection_enabled", "encryption_details", "identifier", "kms_encryption_key", "region", "tags", "tags_all", "vpc_endpoint_service_name"],
        },
      },
    }
  ),
  withDeletionProtectionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection_enabled" expected to be of type "bool"';
    {
      deletion_protection_enabled: converted,
    }
  ),
  withKmsEncryptionKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_encryption_key" expected to be of type "string"';
    {
      kms_encryption_key: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  multi_region_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withClusters(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"clusters" expected to be of type "set"';
      {
        clusters: converted,
      }
    ),
    withClustersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"clusters" expected to be of type "set"';
      {
        clusters+: converted,
      }
    ),
    withWitnessRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"witness_region" expected to be of type "string"';
      {
        witness_region: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withMultiRegionProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multi_region_properties: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withMultiRegionPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      multi_region_properties+: converted,
    }
  ),
}

{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_file_system",
          type:: "resource",
          attributes:: ["arn", "availability_zone_id", "availability_zone_name", "creation_token", "dns_name", "encrypted", "id", "kms_key_id", "name", "number_of_mount_targets", "owner_id", "performance_mode", "provisioned_throughput_in_mibps", "region", "size_in_bytes", "tags", "tags_all", "throughput_mode"],
        },
      },
    }
  ),
  withAvailabilityZoneName(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_name" expected to be of type "string"';
    {
      availability_zone_name: converted,
    }
  ),
  withCreationToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_token" expected to be of type "string"';
    {
      creation_token: converted,
    }
  ),
  withEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withPerformanceMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"performance_mode" expected to be of type "string"';
    {
      performance_mode: converted,
    }
  ),
  withProvisionedThroughputInMibps(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provisioned_throughput_in_mibps" expected to be of type "number"';
    {
      provisioned_throughput_in_mibps: converted,
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
  withThroughputMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"throughput_mode" expected to be of type "string"';
    {
      throughput_mode: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  lifecycle_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withTransitionToArchive(value):: (
      local converted = value;
      assert std.isString(converted) : '"transition_to_archive" expected to be of type "string"';
      {
        transition_to_archive: converted,
      }
    ),
    withTransitionToIa(value):: (
      local converted = value;
      assert std.isString(converted) : '"transition_to_ia" expected to be of type "string"';
      {
        transition_to_ia: converted,
      }
    ),
    withTransitionToPrimaryStorageClass(value):: (
      local converted = value;
      assert std.isString(converted) : '"transition_to_primary_storage_class" expected to be of type "string"';
      {
        transition_to_primary_storage_class: converted,
      }
    ),
  },
  protection:: {
    local block = self,
    new():: (
      {}
    ),
    withReplicationOverwrite(value):: (
      local converted = value;
      assert std.isString(converted) : '"replication_overwrite" expected to be of type "string"';
      {
        replication_overwrite: converted,
      }
    ),
  },
  withLifecyclePolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lifecycle_policy: value,
    }
  ),
  withProtection(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protection: value,
    }
  ),
  withLifecyclePolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lifecycle_policy+: converted,
    }
  ),
  withProtectionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protection+: converted,
    }
  ),
}

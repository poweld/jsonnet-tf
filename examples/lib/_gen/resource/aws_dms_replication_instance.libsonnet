{
  local block = self,
  new(terraformName, replicationInstanceClass, replicationInstanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_replication_instance",
          type:: "resource",
          attributes:: ["allocated_storage", "allow_major_version_upgrade", "apply_immediately", "auto_minor_version_upgrade", "availability_zone", "dns_name_servers", "engine_version", "id", "kms_key_arn", "multi_az", "network_type", "preferred_maintenance_window", "publicly_accessible", "region", "replication_instance_arn", "replication_instance_class", "replication_instance_id", "replication_instance_private_ips", "replication_instance_public_ips", "replication_subnet_group_id", "tags", "tags_all", "vpc_security_group_ids"],
        },
      },
    }
    + block.withReplicationInstanceClass(replicationInstanceClass)
    + block.withReplicationInstanceId(replicationInstanceId)
  ),
  withAllocatedStorage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
    }
  ),
  withAllowMajorVersionUpgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_major_version_upgrade" expected to be of type "bool"';
    {
      allow_major_version_upgrade: converted,
    }
  ),
  withApplyImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  withAutoMinorVersionUpgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withDnsNameServers(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name_servers" expected to be of type "string"';
    {
      dns_name_servers: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withMultiAz(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  withNetworkType(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  withPreferredMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
    }
  ),
  withPubliclyAccessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  withReplicationInstanceClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_class" expected to be of type "string"';
    {
      replication_instance_class: converted,
    }
  ),
  withReplicationInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_id" expected to be of type "string"';
    {
      replication_instance_id: converted,
    }
  ),
  withReplicationSubnetGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_subnet_group_id" expected to be of type "string"';
    {
      replication_subnet_group_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  kerberos_authentication_settings:: {
    local block = self,
    new(keyCacheSecretIamArn, keyCacheSecretId, krb5FileContents):: (
      {}
      + block.withKeyCacheSecretIamArn(keyCacheSecretIamArn)
      + block.withKeyCacheSecretId(keyCacheSecretId)
      + block.withKrb5FileContents(krb5FileContents)
    ),
    withKeyCacheSecretIamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_cache_secret_iam_arn" expected to be of type "string"';
      {
        key_cache_secret_iam_arn: converted,
      }
    ),
    withKeyCacheSecretId(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_cache_secret_id" expected to be of type "string"';
      {
        key_cache_secret_id: converted,
      }
    ),
    withKrb5FileContents(value):: (
      local converted = value;
      assert std.isString(converted) : '"krb5_file_contents" expected to be of type "string"';
      {
        krb5_file_contents: converted,
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
  withKerberosAuthenticationSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kerberos_authentication_settings: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withKerberosAuthenticationSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kerberos_authentication_settings+: converted,
    }
  ),
}

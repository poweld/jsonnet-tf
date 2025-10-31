{
  local block = self,
  new(terraformName, clientList, gatewayArn, locationArn, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_nfs_file_share",
          type:: "resource",
          attributes:: ["arn", "audit_destination_arn", "bucket_region", "client_list", "default_storage_class", "file_share_name", "fileshare_id", "gateway_arn", "guess_mime_type_enabled", "id", "kms_encrypted", "kms_key_arn", "location_arn", "notification_policy", "object_acl", "path", "read_only", "region", "requester_pays", "role_arn", "squash", "tags", "tags_all", "vpc_endpoint_dns_name"],
        },
      },
    }
    + block.withClientList(clientList)
    + block.withGatewayArn(gatewayArn)
    + block.withLocationArn(locationArn)
    + block.withRoleArn(roleArn)
  ),
  withAuditDestinationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"audit_destination_arn" expected to be of type "string"';
    {
      audit_destination_arn: converted,
    }
  ),
  withBucketRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_region" expected to be of type "string"';
    {
      bucket_region: converted,
    }
  ),
  withClientList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_list" expected to be of type "set"';
    {
      client_list: converted,
    }
  ),
  withClientListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_list" expected to be of type "set"';
    {
      client_list+: converted,
    }
  ),
  withDefaultStorageClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_storage_class" expected to be of type "string"';
    {
      default_storage_class: converted,
    }
  ),
  withFileShareName(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_share_name" expected to be of type "string"';
    {
      file_share_name: converted,
    }
  ),
  withGatewayArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_arn" expected to be of type "string"';
    {
      gateway_arn: converted,
    }
  ),
  withGuessMimeTypeEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"guess_mime_type_enabled" expected to be of type "bool"';
    {
      guess_mime_type_enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"kms_encrypted" expected to be of type "bool"';
    {
      kms_encrypted: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withLocationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_arn" expected to be of type "string"';
    {
      location_arn: converted,
    }
  ),
  withNotificationPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_policy" expected to be of type "string"';
    {
      notification_policy: converted,
    }
  ),
  withObjectAcl(value):: (
    local converted = value;
    assert std.isString(converted) : '"object_acl" expected to be of type "string"';
    {
      object_acl: converted,
    }
  ),
  withReadOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
    {
      read_only: converted,
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
  withRequesterPays(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"requester_pays" expected to be of type "bool"';
    {
      requester_pays: converted,
    }
  ),
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withSquash(value):: (
    local converted = value;
    assert std.isString(converted) : '"squash" expected to be of type "string"';
    {
      squash: converted,
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
  withVpcEndpointDnsName(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_dns_name" expected to be of type "string"';
    {
      vpc_endpoint_dns_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cache_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    withCacheStaleTimeoutInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cache_stale_timeout_in_seconds" expected to be of type "number"';
      {
        cache_stale_timeout_in_seconds: converted,
      }
    ),
  },
  nfs_file_share_defaults:: {
    local block = self,
    new():: (
      {}
    ),
    withDirectoryMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"directory_mode" expected to be of type "string"';
      {
        directory_mode: converted,
      }
    ),
    withFileMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_mode" expected to be of type "string"';
      {
        file_mode: converted,
      }
    ),
    withGroupId(value):: (
      local converted = value;
      assert std.isString(converted) : '"group_id" expected to be of type "string"';
      {
        group_id: converted,
      }
    ),
    withOwnerId(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_id" expected to be of type "string"';
      {
        owner_id: converted,
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
  withCacheAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_attributes: value,
    }
  ),
  withNfsFileShareDefaults(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nfs_file_share_defaults: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCacheAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_attributes+: converted,
    }
  ),
  withNfsFileShareDefaultsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      nfs_file_share_defaults+: converted,
    }
  ),
}

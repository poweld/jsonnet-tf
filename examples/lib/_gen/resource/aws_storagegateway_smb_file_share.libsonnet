{
  local block = self,
  new(terraformName, gatewayArn, locationArn, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_smb_file_share",
          type:: "resource",
          attributes:: ["access_based_enumeration", "admin_user_list", "arn", "audit_destination_arn", "authentication", "bucket_region", "case_sensitivity", "default_storage_class", "file_share_name", "fileshare_id", "gateway_arn", "guess_mime_type_enabled", "id", "invalid_user_list", "kms_encrypted", "kms_key_arn", "location_arn", "notification_policy", "object_acl", "oplocks_enabled", "path", "read_only", "region", "requester_pays", "role_arn", "smb_acl_enabled", "tags", "tags_all", "valid_user_list", "vpc_endpoint_dns_name"],
        },
      },
    }
    + block.withGatewayArn(gatewayArn)
    + block.withLocationArn(locationArn)
    + block.withRoleArn(roleArn)
  ),
  withAccessBasedEnumeration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"access_based_enumeration" expected to be of type "bool"';
    {
      access_based_enumeration: converted,
    }
  ),
  withAdminUserList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_user_list" expected to be of type "set"';
    {
      admin_user_list: converted,
    }
  ),
  withAdminUserListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_user_list" expected to be of type "set"';
    {
      admin_user_list+: converted,
    }
  ),
  withAuditDestinationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"audit_destination_arn" expected to be of type "string"';
    {
      audit_destination_arn: converted,
    }
  ),
  withAuthentication(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication" expected to be of type "string"';
    {
      authentication: converted,
    }
  ),
  withBucketRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_region" expected to be of type "string"';
    {
      bucket_region: converted,
    }
  ),
  withCaseSensitivity(value):: (
    local converted = value;
    assert std.isString(converted) : '"case_sensitivity" expected to be of type "string"';
    {
      case_sensitivity: converted,
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
  withInvalidUserList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"invalid_user_list" expected to be of type "set"';
    {
      invalid_user_list: converted,
    }
  ),
  withInvalidUserListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"invalid_user_list" expected to be of type "set"';
    {
      invalid_user_list+: converted,
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
  withOplocksEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"oplocks_enabled" expected to be of type "bool"';
    {
      oplocks_enabled: converted,
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
  withSmbAclEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"smb_acl_enabled" expected to be of type "bool"';
    {
      smb_acl_enabled: converted,
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
  withValidUserList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_user_list" expected to be of type "set"';
    {
      valid_user_list: converted,
    }
  ),
  withValidUserListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"valid_user_list" expected to be of type "set"';
    {
      valid_user_list+: converted,
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
}

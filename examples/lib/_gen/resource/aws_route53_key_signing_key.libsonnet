{
  local block = self,
  new(terraformName, hostedZoneId, keyManagementServiceArn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_key_signing_key",
          type:: "resource",
          attributes:: ["digest_algorithm_mnemonic", "digest_algorithm_type", "digest_value", "dnskey_record", "ds_record", "flag", "hosted_zone_id", "id", "key_management_service_arn", "key_tag", "name", "public_key", "signing_algorithm_mnemonic", "signing_algorithm_type", "status"],
        },
      },
    }
    + block.withHostedZoneId(hostedZoneId)
    + block.withKeyManagementServiceArn(keyManagementServiceArn)
    + block.withName(name)
  ),
  withHostedZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyManagementServiceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_management_service_arn" expected to be of type "string"';
    {
      key_management_service_arn: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}

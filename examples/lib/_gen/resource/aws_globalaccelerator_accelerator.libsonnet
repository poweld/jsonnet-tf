{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_globalaccelerator_accelerator",
          type:: "resource",
          attributes:: ["arn", "dns_name", "dual_stack_dns_name", "enabled", "hosted_zone_id", "id", "ip_address_type", "ip_addresses", "ip_sets", "name", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  withIpAddresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ip_addresses" expected to be of type "list"';
    {
      ip_addresses: converted,
    }
  ),
  withIpAddressesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ip_addresses" expected to be of type "list"';
    {
      ip_addresses+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  attributes:: {
    local block = self,
    new():: (
      {}
    ),
    withFlowLogsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"flow_logs_enabled" expected to be of type "bool"';
      {
        flow_logs_enabled: converted,
      }
    ),
    withFlowLogsS3Bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"flow_logs_s3_bucket" expected to be of type "string"';
      {
        flow_logs_s3_bucket: converted,
      }
    ),
    withFlowLogsS3Prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"flow_logs_s3_prefix" expected to be of type "string"';
      {
        flow_logs_s3_prefix: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attributes: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attributes+: converted,
    }
  ),
}

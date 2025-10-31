{
  local block = self,
  new(terraformName, gatewayArn, locationArn, password, username):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_file_system_association",
          type:: "resource",
          attributes:: ["arn", "audit_destination_arn", "gateway_arn", "id", "location_arn", "password", "region", "tags", "tags_all", "username"],
        },
      },
    }
    + block.withGatewayArn(gatewayArn)
    + block.withLocationArn(locationArn)
    + block.withPassword(password)
    + block.withUsername(username)
  ),
  withAuditDestinationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"audit_destination_arn" expected to be of type "string"';
    {
      audit_destination_arn: converted,
    }
  ),
  withGatewayArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_arn" expected to be of type "string"';
    {
      gateway_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLocationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_arn" expected to be of type "string"';
    {
      location_arn: converted,
    }
  ),
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
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
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
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
